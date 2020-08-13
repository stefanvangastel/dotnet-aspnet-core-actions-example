using Microsoft.AspNetCore.Mvc;

namespace dotnetapp
{
    [Route("/")]
    public class IndexController : Controller
    {
        [HttpGet]
        public IActionResult Get()
        {
            return new OkObjectResult("<h1>Request processed by host: " + System.Environment.MachineName + "</h1>");
        }
    }
}
