import SwiftUI

struct CountryListView: View {
    let countryList = Country.all()
    
    @Binding var currentIndex: Int
    @Binding var continentList: [String]
    
    var body: some View {
        List(self.countryList, id: \.countryName) { country in
            country.countryContinent == continentList[currentIndex] ?
            GroupBox(label: Text(country.countryName).font(.system(size: 30)), content: {
                    Image(country.imageURL)
                        .resizable()
                        .aspectRatio(1.5, contentMode: .fill)
                })
            .onTapGesture(perform: {
                print(country.countryName)
            })
                .groupBoxStyle(CustomGroupBox())
            : nil
        }
    }
}
