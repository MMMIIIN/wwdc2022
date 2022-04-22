enum Continent: String {
    case Asia = "Asia"
    case Europe = "Europe"
    case SouthAmerica = "South America"
    case NorthAmerica = "North America"
    case Africa = "Africa"
    case MiddleEast = "Middle East"
}

struct Country {
    let name: String
    let continent: String
    let imageURL: String
    let capital: String
    let population: Int
    let area: Int
    let language: Array<String>
    let currency: String
}

extension Country {
    static func all() -> [Country] {
        return [
            Country(name: "Korea", continent: Continent.Asia.rawValue, imageURL: "Korea", capital: "Seoul", population: 51610695, area: 223646, language: ["Korean"], currency: "Won"),
            Country(name: "Japan", continent: Continent.Asia.rawValue, imageURL: "Japan", capital: "Tokyo", population: 125584839, area: 377975, language: ["Japanese"], currency: "Yen"),
            Country(name: "China", continent: Continent.Asia.rawValue, imageURL: "China", capital: "Beijing", population: 1448471404, area: 9640821, language: ["Chinese"], currency: "Yuan"),
            Country(name: "Indonesia", continent: Continent.Asia.rawValue, imageURL: "Indonesia", capital: "Jakarta", population: 279134505, area: 1904569, language: ["Indonesian"], currency: "Rupiah"),
            Country(name: "Malaysia", continent: Continent.Asia.rawValue, imageURL: "Malaysia", capital: "Kuala Lumpur", population: 33037483, area: 330803, language: ["Malay,", "English"], currency: "Malaysian Ringgit"),
            Country(name: "Philippines", continent: Continent.Asia.rawValue, imageURL: "Philippines", capital: "Manila", population: 112508991, area: 343448, language: ["Filipino,", "English"], currency: "Philippine Peso"),
            Country(name: "Thailand", continent: Continent.Asia.rawValue, imageURL: "Thailand", capital: "Bangkok", population: 70078198, area: 513120, language: ["Thai"], currency: "Baht"),
            Country(name: "Vietnam", continent: Continent.Asia.rawValue, imageURL: "Vietnam", capital: "Hanoi", population: 98953535, area: 331212, language: ["Vietnamese"], currency: "Dong"),
            
            Country(name: "Peru", continent: Continent.SouthAmerica.rawValue, imageURL: "Peru", capital: "Lima", population: 33359416, area: 1285216, language: ["Spanish,", "Quechua,", "Aymar aru"], currency: "Sol peruano"),
            Country(name: "Brazil", continent: Continent.SouthAmerica.rawValue, imageURL: "Brazil", capital: "Brasilia", population: 215353588, area: 8515767, language: ["Portuguese"], currency: "Real"),
            Country(name: "Colombia", continent: Continent.SouthAmerica.rawValue, imageURL: "Colombia", capital: "Bogota", population: 51512766, area: 1141748, language: ["Spanish"], currency: "Peso Colombiano"),
            Country(name: "Argentina", continent: Continent.SouthAmerica.rawValue, imageURL: "Argentina", capital: "Buenos Aires", population: 46010234, area: 2766890, language: ["Spanish"], currency: "Peso Argentino"),
            Country(name: "Dominican Republic", continent: Continent.SouthAmerica.rawValue, imageURL: "Dominican Republic", capital: "Santo Domingo", population: 11056374, area: 48671, language: ["Spanish"], currency: "Dominican peso"),
            Country(name: "Jamaica", continent: Continent.SouthAmerica.rawValue, imageURL: "Jamaica", capital: "Kingston", population: 2973462, area: 10991, language: ["English"], currency: "Jamaican Dollar"),
            Country(name: "Mexico", continent: Continent.SouthAmerica.rawValue, imageURL: "Mexico", capital: "Mexico City", population: 131562775, area: 1962550, language: ["Spanish"], currency: "Peso Mexicano"),
            Country(name: "Bolivarian Republic of Venezuela", continent: Continent.SouthAmerica.rawValue, imageURL: "Bolivarian Republic of Venezuela", capital: "Caracas", population: 29266989, area: 916445, language: ["Spanish"], currency: "Bolívar"),
            Country(name: "Cuba", continent: Continent.SouthAmerica.rawValue, imageURL: "Cuba", capital: "Habana", population: 10985648, area: 109884, language: ["Spanish"], currency: "Cuban Peso"),
            
            Country(name: "Canada", continent: Continent.NorthAmerica.rawValue, imageURL: "Canada", capital: "Ottawa", population: 38388416, area: 9984670, language: ["English,", "French"], currency: "Canadian Dollar"),
            Country(name: "United States of America", continent: Continent.NorthAmerica.rawValue, imageURL: "United States of America", capital: "Washington, D.C.", population: 334805268, area: 9833517, language: ["English"], currency: "Dollar"),
            
            Country(name: "France", continent: Continent.Europe.rawValue, imageURL: "France", capital: "Paris", population: 67813000, area: 643801, language: ["French"], currency: "Euro"),
            Country(name: "Italy", continent: Continent.Europe.rawValue, imageURL: "Italy", capital: "Roma", population: 60262779, area: 301340, language: ["Italian"], currency: "Euro"),
            Country(name: "Germany", continent: Continent.Europe.rawValue, imageURL: "Germany", capital: "Berlin", population: 83883587, area: 357022, language: ["German"], currency: "Euro"),
            Country(name: "Spain", continent: Continent.Europe.rawValue, imageURL: "Spain", capital: "Madrid", population: 46719147, area: 505990, language: ["Spanish"], currency: "Euro"),
            Country(name: "Belgium", continent: Continent.Europe.rawValue, imageURL: "Belgium", capital: "Brussels", population: 11597163, area: 30528, language: ["Nederlands,", "French,", "German"], currency: "Euro"),
            Country(name: "United Kingdom", continent: Continent.Europe.rawValue, imageURL: "United Kingdom", capital: "London", population: 68497913, area: 243891, language: ["English"], currency: "Pound sterling"),
            Country(name: "Greece", continent: Continent.Europe.rawValue, imageURL: "Greece", capital: "Athens", population: 10316641, area: 131957, language: ["Greek"], currency: "Euro"),
            Country(name: "Austria", continent: Continent.Europe.rawValue, imageURL: "Austria", capital: "Vienna", population: 9043072, area: 83879, language: ["German"], currency: "Euro"),
            Country(name: "Hungary", continent: Continent.Europe.rawValue, imageURL: "Hungary", capital: "Budapest", population: 9606252, area: 93030, language: ["Hungarian"], currency: "Forint"),
            Country(name: "Norway", continent: Continent.Europe.rawValue, imageURL: "Norway", capital: "Oslo", population: 5511372, area: 385207, language: ["Norsk"], currency: "Krone"),
            Country(name: "Slovenia", continent: Continent.Europe.rawValue, imageURL: "Slovenia", capital: "Ljubljana", population: 2078031, area: 20273, language: ["Slovene"], currency: "Euro"),
            Country(name: "Ukraine", continent: Continent.Europe.rawValue, imageURL: "Ukraine", capital: "Kyiv", population: 41167337, area: 603628, language: ["Ukrainian"], currency: "Hryvnia"),
            
            Country(name: "Turkey", continent: Continent.MiddleEast.rawValue, imageURL: "Turkey", capital: "Ankara", population: 85042736, area: 783356, language: ["Turkish"], currency: "lira"),
            Country(name: "Saudi Arabia", continent: Continent.MiddleEast.rawValue, imageURL: "Saudi Arabia", capital: "Riyadh", population: 35340680, area: 2149690, language: ["Arabic"], currency: "Riyal"),
            Country(name: "Iraq", continent: Continent.MiddleEast.rawValue, imageURL: "Iraq", capital: "Baghdad", population: 41179358, area: 438317, language: ["Arabic,", "Kurdish"], currency: "Dinar"),
            Country(name: "Israel", continent: Continent.MiddleEast.rawValue, imageURL: "Israel", capital: "Jerusalem", population: 8868126, area: 20770, language: ["Hebrew"], currency: "New Israeli Shekel"),
            Country(name: "Syria", continent: Continent.MiddleEast.rawValue, imageURL: "Syria", capital: "Damascus", population: 18275704, area: 185180, language: ["Arabic"], currency: "Syrian pound"),
            Country(name: "Lebanon", continent: Continent.MiddleEast.rawValue, imageURL: "Lebanon", capital: "Beyrouth", population: 6769151, area: 10452, language: ["Arabic,", "French"], currency: "Lebanese Pound"),
            
            Country(name: "Morocco", continent: Continent.Africa.rawValue, imageURL: "Morocco", capital: "Rabat", population: 37344787, area: 710850, language: ["Arabic,", "Berber"], currency: "Dirhams"),
            Country(name: "Nigeria", continent: Continent.Africa.rawValue, imageURL: "Nigeria", capital: "Abuja", population: 216746933, area: 923768, language: ["English"], currency: "Naira"),
            Country(name: "Republic of South Africa", continent: Continent.Africa.rawValue, imageURL: "Republic of South Africa", capital: "Pretoria, Cape Town, Bloemfontein", population: 60756134, area: 1221037, language: ["Afrikaans", "English"], currency: "Rand"),
            Country(name: "Kenya", continent: Continent.Africa.rawValue, imageURL: "Kenya", capital: "Nairobi", population: 55743166, area: 580367, language: ["English,", "Kiswahili"], currency: "Shilling"),
            Country(name: "Tunisia", continent: Continent.Africa.rawValue, imageURL: "Tunisia", capital: "Tunis", population: 11935764, area: 163610, language: ["Arabic"], currency: "Dinar"),
            Country(name: "Egypt", continent: Continent.Africa.rawValue, imageURL: "Egypt", capital: "Cairo", population: 104258327, area: 1010408, language: ["Arabic"], currency: "Egyptian pound"),
            Country(name: "Ethiopia", continent: Continent.Africa.rawValue, imageURL: "Ethiopia", capital: "Addis Ababa", population: 117876226, area: 1104300 , language: ["Amhara"], currency: "Birr"),
        ]
    }
}
