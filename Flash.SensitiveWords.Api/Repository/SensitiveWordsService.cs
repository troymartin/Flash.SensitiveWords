using Flash.SensitiveWords.Api.Interfaces;
using Flash.SensitiveWords.Data.Interfaces;

namespace Flash.SensitiveWords.Api.Repository
{
    /// <summary>
    /// A service to manage sensitive words
    /// </summary>
    /// <param name="dataAccess"></param>
    public class SensitiveWordsService(IDbAccess dataAccess) : ISensitiveWordsService
    {
        /// <summary>
        /// Gets sensitive words from the database
        /// </summary>
        /// <returns>A List of sensitive words</returns>
        /// <exception cref="ApplicationException"></exception>
        private async Task<List<string>> GetSensitiveWords()
        {
            var sensitiveWords = await dataAccess.SelectProhibitedWords();
            if (sensitiveWords == null || sensitiveWords.Count == 0)
            {
                throw new ApplicationException("Sensitive words table is empty");
            }
            return sensitiveWords;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="words"></param>
        /// <returns></returns>
        public async Task<string> SanitizeWords(string words)
        {
            var sensitiveWords = await GetSensitiveWords();
            var separateWords = words.Split(' ');
            var sanitizedWords = string.Empty;
            foreach (var word in separateWords)
            {
                if (sensitiveWords.Any(sensitiveWord =>
                word.Equals(sensitiveWord, StringComparison.InvariantCultureIgnoreCase)))
                {
                    var wordTmp = word;
                    SanitizeWord(ref wordTmp);
                    sanitizedWords += " " + wordTmp + " ";
                }
                else
                    sanitizedWords += " " + word;
            }
            sanitizedWords = sanitizedWords.Trim();
            return sanitizedWords;
        }

        private string SanitizeWord(ref string word)
        {
            for (int i = 0; i < word.Length; i++)
            {
                word = word.Replace(word[i], '*');
            }
            return word;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="word"></param>
        /// <returns></returns>
        public async Task<bool> InsertSensitiveWord(string word)
        {
            return await dataAccess.InsertProhibitedWord(word);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="word"></param>
        /// <returns></returns>
        public async Task<bool> DeleteSensitiveWord(string word)
        {
            return await dataAccess.DeleteSensitiveWord(word);
        }
    }
}
