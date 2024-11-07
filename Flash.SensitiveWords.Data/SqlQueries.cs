using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Flash.SensitiveWords.Data
{
    internal struct SqlQueries
    {
        public static readonly string GetSanitizedWords = "spGetSensitiveWords";
        public static readonly string InsertSanitizedWord = "spInsertSensitiveWord";
    }
}
