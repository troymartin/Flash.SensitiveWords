using Flash.SensitiveWords.Data.Interfaces;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using System.Data;

namespace Flash.SensitiveWords.Data
{
    public class SqlDataAccess(IConfiguration config) : IDbAccess
    {
        
        private string connectionString => config.GetConnectionString("Flash")!;

        /// <summary>
        /// 
        /// </summary>
        /// <param name="connectionString"></param>
        /// <returns></returns>
        public SqlConnection GetConnection()
        {
            return new SqlConnection(connectionString);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sqlCommand"></param>
        /// <param name="type"></param>
        /// <param name="parms"></param>
        /// <returns></returns>
        public SqlCommand GetCommand(string sqlCommand, CommandType type, SqlConnection connection)
        {
            // Create the Command and Parameter objects.
            SqlCommand command = new(sqlCommand, connection)
            {
                CommandType = type
            };
            return command;
        }

        public async Task<List<string>> SelectProhibitedWords()
        {
            var connection = GetConnection();

            try
            {
                var sqlCommand = GetCommand(SqlQueries.GetSanitizedWords, CommandType.StoredProcedure, connection);

                await connection.OpenAsync();
                var reader = await sqlCommand.ExecuteReaderAsync();

                var prohibitedWords = new List<string>();
                while (reader.Read())
                {
                    var prohibitedWord = reader.GetString(1);
                    if (!string.IsNullOrEmpty(prohibitedWord))
                    {
                        prohibitedWords.Add(prohibitedWord);
                    }

                }
                return prohibitedWords;
            }
            catch (SqlException)
            {
                throw;
            }
            catch (Exception) 
            {
                throw;
            }
            finally
            {
                connection.Close();
                connection.Dispose();
            }
        }

        public async Task<bool> InsertProhibitedWord(string word)
        {
            var connection = GetConnection();
            try
            {
                var sqlCommand = GetCommand(SqlQueries.InsertSanitizedWord, CommandType.StoredProcedure, connection);
                sqlCommand.Parameters.AddWithValue("@word", word);
                await connection.OpenAsync();
                var result = Convert.ToBoolean(await sqlCommand.ExecuteNonQueryAsync());
                return result;
            }
            catch (SqlException)
            {
                throw;
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                connection.Close();
                connection.Dispose();
            }
        }

        public async Task<bool> DeleteSensitiveWord(string word)
        {
            var connection = GetConnection();
            try
            {
                var sqlCommand = GetCommand(SqlQueries.DeleteSanitizedWord, CommandType.StoredProcedure, connection);
                sqlCommand.Parameters.AddWithValue("@word", word);
                await connection.OpenAsync();
                var result = Convert.ToBoolean(await sqlCommand.ExecuteNonQueryAsync());
                return result;
            }
            catch (SqlException)
            {
                throw;
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                connection.Close();
                connection.Dispose();
            }
        }
    }
}
