namespace Flash.SensitiveWords.Data.Interfaces
{
    public interface IDbAccess
    {
        Task<List<string>> SelectProhibitedWords();
        Task<bool> InsertProhibitedWord(string word);
        Task<bool> DeleteSensitiveWord(string word);
    }
}
