using Flash.SensitiveWords.Api.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace Flash.SensitiveWords.Api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    [Produces("application/json")]
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

        /// <summary>
        /// An endpoint to sanitize text of prohibited values
        /// </summary>
        /// <param name="words">query parameter of words/s to sanitize</param>
        /// <returns></returns>
        /// <response code="200">Returns the sanitized words</response>
        /// <response code="400">If the words input is null</response>
        /// <response code="500">If an exception occurs</response>
        [HttpGet(Name = "GetSanitizedWords")]
        [ProducesResponseType(200)]
        [ProducesResponseType(400)]
        [ProducesResponseType(500)]
        public async Task<IActionResult> Get(string words)
        {
            try
            {
                if (string.IsNullOrWhiteSpace(words))
                {
                    return BadRequest("Query parameter words cannot be empty");
                }

                var sanitizedWords = await _sensitiveWordsService.SanitizeWords(words);

                return Ok(sanitizedWords);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex,ex.Message);
                return StatusCode(500,ex.Message);
            }
        }

        /// <summary>
        /// An endpoint to sanitize text of prohibited values
        /// </summary>
        /// <param name="words">query parameter of words/s to sanitize</param>
        /// <returns></returns>
        /// <response code="200">Returns the sanitized words</response>
        /// <response code="400">If the words input is null</response>
        /// <response code="500">If an exception occurs</response>
        [HttpPut(Name = "InsertSanitizedWord")]
        [ProducesResponseType(201)]
        [ProducesResponseType(400)]
        [ProducesResponseType(500)]
        public async Task<IActionResult> Put([FromBody]string word)
        {
            try
            {
                if (string.IsNullOrWhiteSpace(word))
                {
                    return BadRequest("Parameter word cannot be empty");
                }

                var success = await _sensitiveWordsService.InsertSensitiveWord(word);
                return Created();
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, ex.Message);
                return StatusCode(500, ex.Message);
            }
        }
    }
}
