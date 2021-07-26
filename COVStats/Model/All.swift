import Foundation

struct All: Codable {
    var updated: Int
    var cases: Int
    var todayCases: Int
    var deaths: Int
    var todayDeaths: Int
    var recovered: Int
    var active: Int
    var critical: Int
    var casesPerOneMillion: Double
    var deathsPerOneMillion: Double
    var tests: Int
    var testsPerOneMillion: Double
    var affectedCountries: Int
}
