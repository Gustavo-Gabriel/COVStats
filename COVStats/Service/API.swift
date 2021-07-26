import Foundation

enum API {
    case getAll
}

extension API {
    var path: String {
        
        let baseUrl = "https://corona.lmao.ninja/v2/"
        
        switch self {
        
        case .getAll:
            return "\(baseUrl)all?yesterday"
            
        }
    }
    
    var allError: All {
        return All(updated: 0, cases: 0, todayCases: 0, deaths: 0, todayDeaths: 0, recovered: 0, active: 0, critical: 0,         casesPerOneMillion: 0, deathsPerOneMillion: 0, tests: 0, testsPerOneMillion: 0, affectedCountries: 0)
    }
}
