namespace gregslist_dotnet.Repositories;

public class HousesRepository
{
    private readonly IDbConnection _db;

    public HousesRepository(IDbConnection db)
    {
        _db = db;
    }

    public List<House> GetAllHouses()
    {
        string sql = @"
        SELECT 
        houses.*,
        accounts.*
        FROM houses
        JOIN accounts ON accounts.id = houses.creatorId;";

        List<House> houses = _db.Query<House, Profile, House>(sql, (house, account) => 
        {
            house.Creator = account;
            return house;
        }).ToList();

        return houses;
    }
}