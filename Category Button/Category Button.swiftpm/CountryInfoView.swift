import SwiftUI

struct CountryInfoView: View {
    var countryInfo: Country
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(countryInfo.imageURL)
                .resizable()
                .scaledToFit()
            Text("ð Capital : \(countryInfo.capital)")
            Text("ð¥ Population : \(countryInfo.population) people")
            Text("ð Area : \(countryInfo.area)kmÂ²")
            HStack {
                Text("ð  Language :")
                ForEach(countryInfo.language, id: \.self) {
                    info in
                    Text(info)
                }
            }
            Text("ðµ Currency : \(countryInfo.currency)")
            Spacer()
        }
        .font(.system(size: 30))
        .padding()
        .navigationBarTitle(Text(countryInfo.name), displayMode: .large)
    }
}
