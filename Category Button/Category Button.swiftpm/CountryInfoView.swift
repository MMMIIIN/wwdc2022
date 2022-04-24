import SwiftUI

struct CountryInfoView: View {
    var countryInfo: Country
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(countryInfo.imageURL)
                .resizable()
                .scaledToFit()
            Text("📍 Capital : \(countryInfo.capital)")
            Text("👥 Population : \(countryInfo.population) people")
            Text("🌏 Area : \(countryInfo.area)km²")
            HStack {
                Text("🔠 Language :")
                ForEach(countryInfo.language, id: \.self) {
                    info in
                    Text(info)
                }
            }
            Text("💵 Currency : \(countryInfo.currency)")
            Spacer()
        }
        .font(.system(size: 30))
        .padding()
        .navigationBarTitle(Text(countryInfo.name), displayMode: .large)
    }
}
