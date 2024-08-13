namespace gregslist_dotnet.Controllers;

[ApiController]
[Route("api/[controller]")]
public class HousesController : ControllerBase 
{
    [HttpGet]
    public ActionResult<List<House>> GetAllHouses()
    {
        try
        {
            return Ok("You did it! You got it to show up.");
        }
        catch (Exception exception)
        {
            return BadRequest(exception.Message);
        }
    }
}