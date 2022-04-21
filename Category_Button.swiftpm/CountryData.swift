enum Continent: String {
    case Asia = "Asia"
    case Europe = "Europe"
    case SouthAmerica = "South America"
    case NorthAmerica = "North America"
    case Africa = "Africa"
    case MiddleEast = "Middle East"
}

struct Country {
    let countryName: String
    let countryContinent: String
    let imageURL: String
}

extension Country {
    static func all() -> [Country] {
        return [
            Country(countryName: "Korea", countryContinent: Continent.Asia.rawValue, imageURL: "Korea"),
            Country(countryName: "Japan", countryContinent: Continent.Asia.rawValue, imageURL: "Japan"),
            Country(countryName: "China", countryContinent: Continent.Asia.rawValue, imageURL: "China"),
            Country(countryName: "Indonesia", countryContinent: Continent.Asia.rawValue, imageURL: "Indonesia"),
            Country(countryName: "Malaysia", countryContinent: Continent.Asia.rawValue, imageURL: "Malaysia"),
            Country(countryName: "Philippines", countryContinent: Continent.Asia.rawValue, imageURL: "Philippines"),
            Country(countryName: "Thailand", countryContinent: Continent.Asia.rawValue, imageURL: "Thailand"),
            Country(countryName: "Vietnam", countryContinent: Continent.Asia.rawValue, imageURL: "Vietnam"),
            
            Country(countryName: "Peru", countryContinent: Continent.SouthAmerica.rawValue, imageURL: "Peru"),
            Country(countryName: "Brazil", countryContinent: Continent.SouthAmerica.rawValue, imageURL: "Brazil"),
            Country(countryName: "Colombia", countryContinent: Continent.SouthAmerica.rawValue, imageURL: "Colombia"),
            Country(countryName: "Argentina", countryContinent: Continent.SouthAmerica.rawValue, imageURL: "Argentina"),
            Country(countryName: "Dominican Republic", countryContinent: Continent.SouthAmerica.rawValue, imageURL: "Dominican Republic"),
            Country(countryName: "Jamaica", countryContinent: Continent.SouthAmerica.rawValue, imageURL: "Jamaica"),
            
            Country(countryName: "Mexico", countryContinent: Continent.NorthAmerica.rawValue, imageURL: "Mexico"),
            Country(countryName: "Canada", countryContinent: Continent.NorthAmerica.rawValue, imageURL: "Canada"),
            Country(countryName: "United States of America", countryContinent: Continent.NorthAmerica.rawValue, imageURL: "United States of America"),
            
            Country(countryName: "France", countryContinent: Continent.Europe.rawValue, imageURL: "France"),
            Country(countryName: "Italy", countryContinent: Continent.Europe.rawValue, imageURL: "Italy"),
            Country(countryName: "Switzerland", countryContinent: Continent.Europe.rawValue, imageURL: "Switzerland"),
            Country(countryName: "Spain", countryContinent: Continent.Europe.rawValue, imageURL: "Spain"),
            Country(countryName: "Belgium", countryContinent: Continent.Europe.rawValue, imageURL: "Belgium"),
            Country(countryName: "United Kingdom", countryContinent: Continent.Europe.rawValue, imageURL: "United Kingdom"),
            Country(countryName: "Greece", countryContinent: Continent.Europe.rawValue, imageURL: "Greece"),
            Country(countryName: "Austria", countryContinent: Continent.Europe.rawValue, imageURL: "Austria"),
            Country(countryName: "Hungary", countryContinent: Continent.Europe.rawValue, imageURL: "Hungary"),
            Country(countryName: "Norway", countryContinent: Continent.Europe.rawValue, imageURL: "Norway"),
            Country(countryName: "Slovenia", countryContinent: Continent.Europe.rawValue, imageURL: "Slovenia"),
            Country(countryName: "Ukraine", countryContinent: Continent.Europe.rawValue, imageURL: "Ukraine"),
            
            Country(countryName: "Turkey", countryContinent: Continent.MiddleEast.rawValue, imageURL: "Turkey"),
            Country(countryName: "Saudi Arabia", countryContinent: Continent.MiddleEast.rawValue, imageURL: "Saudi Arabia"),
            
            Country(countryName: "Morocco", countryContinent: Continent.Africa.rawValue, imageURL: "Morocco")
        ]
    }
}
