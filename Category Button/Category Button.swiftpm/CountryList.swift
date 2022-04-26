import SwiftUI

struct CustomGroupBox: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading) {
            configuration.label
            configuration.content
        }
            .padding(.vertical, 20)
    }
}

struct CountryListView: View {
    var countryList = Country.all()
    @Binding var currentIndex: Int
    @Binding var continentList: [String]

    var body: some View {
        List(self.countryList, id: \.name) { country in
            country.continent == continentList[currentIndex] ?
            NavigationLink(destination: CountryInfoView(countryInfo: country)) {
                GroupBox(label: Text(country.name).font(.system(size: 30)), content: {
                        Image(country.imageURL)
                            .resizable()
                            .scaledToFit()
                    })
                    .groupBoxStyle(CustomGroupBox())
            }
            : nil
        }
    }
}
