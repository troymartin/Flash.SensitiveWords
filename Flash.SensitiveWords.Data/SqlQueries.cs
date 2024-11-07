namespace Flash.SensitiveWords.Data
{
    internal readonly struct SqlQueries
    {
        public static readonly string GetSanitizedWords = "spGetSensitiveWords";
        public static readonly string InsertSanitizedWord = "spInsertSensitiveWord";
        public static readonly string DeleteSanitizedWord = "spDeleteSensitiveWord";
    }
}
