namespace Flash.SensitiveWords.Api.Interfaces
{
    public interface ISensitiveWordsService
    {
        Task<string> SanitizeWords(string words);
    }
}
