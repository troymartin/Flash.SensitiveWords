﻿using Flash.SensitiveWords.Data.Interfaces;
using Microsoft.Data.SqlClient;
using System.Data;

namespace Flash.SensitiveWords.Data
{
    public class SqlDataAccess(string connectionString) : IDbAccess
    {
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
            try
            {
                var connection = GetConnection();
                var sqlCommand = GetCommand(SqlQueries.GetSanitizedWords, CommandType.StoredProcedure, connection);

                await connection.OpenAsync();
                var reader = await sqlCommand.ExecuteReaderAsync();

                var prohibitedWords = new List<string>();
                while (reader.Read())
                {
                    var prohibitedWord = reader.GetString(0);
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
        }
    }
}
