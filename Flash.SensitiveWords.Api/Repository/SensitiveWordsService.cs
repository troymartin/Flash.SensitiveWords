using Flash.SensitiveWords.Api.Interfaces;
using Flash.SensitiveWords.Data.Interfaces;

namespace Flash.SensitiveWords.Api.Repository
{
    public class SensitiveWordsService(IDbAccess dataAccess) : ISensitiveWordsService
    {
        private async Task<List<string>> GetSensitiveWords()
        {
            var sensitiveWords = await dataAccess.SelectProhibitedWords();
            if (sensitiveWords == null || sensitiveWords.Count == 0)
            {
                throw new ApplicationException("Sensitive words table is empty");
            }
            return sensitiveWords;
        }

        public async Task<string> SanitizeWords(string words)
        {
            var sensitiveWords = await GetSensitiveWords();
            var sepsarateWords = words.Split(' ');
            var sanitizedWords = string.Empty;
            foreach (var word in sepsarateWords)
            {
                if(sensitiveWords.Any(sensitiveWord => 
                word.Equals(sensitiveWord,StringComparison.InvariantCultureIgnoreCase)))
                {
                    var wordTmp = word;
                    SanitizeWord(ref wordTmp);
                    sanitizedWords += wordTmp;
                }
            }
            return sanitizedWords;
        }

        private string SanitizeWord(ref string word)
        {
            for (int i = 0; i < word.Length - 1; i++)
            {
                word.Replace(word[i], '*');
                if (i > 0)
                {
                    word.Insert(0, " ");
                }
            }
            return word;
        }
    }
}
