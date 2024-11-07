using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Flash.SensitiveWords.Data.Interfaces
{
    public interface IDbAccess
    {
        Task<List<string>> SelectProhibitedWords();
        Task<bool> InsertProhibitedWord(string word);
    }
}
