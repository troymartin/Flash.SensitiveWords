﻿namespace Flash.SensitiveWords.Api.Interfaces
{
    public interface ISensitiveWordsService
    {
        Task<string> SanitizeWords(string words);
        Task<bool> InsertSensitiveWord(string word);
        Task<bool> DeleteSensitiveWord(string word);
    }
}
