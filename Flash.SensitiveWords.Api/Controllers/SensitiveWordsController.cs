using Flash.SensitiveWords.Api.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace Flash.SensitiveWords.Api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class SensitiveWordsController : ControllerBase
    {
        
        private readonly ILogger<SensitiveWordsController> _logger;
        private readonly ISensitiveWordsService _sensitiveWordsService;

        public SensitiveWordsController(ILogger<SensitiveWordsController> logger,
            ISensitiveWordsService sensitiveWordsService)
        {
            _logger = logger;
            _sensitiveWordsService = sensitiveWordsService;
        }

        [HttpGet(Name = "GetSanitizedWords")]
        public IActionResult Get(string words)
        {
            if (string.IsNullOrWhiteSpace(words))
            {
                return BadRequest("Query parameter words cannot be empty");
            }

            var sanitizedWords = _sensitiveWordsService.SanitizeWords(words);

            return Ok(sanitizedWords);
        }
    }
}
