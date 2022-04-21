import SwiftUI

struct ListView: View {
    var continent: String
    let countryList = Country.all()

    @Binding var currentIndex: Int
    @Binding var continentList: [String]

    var body: some View {
        VStack {
            CategoryScroll(currentIndex: $currentIndex, continentList: $continentList)
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
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("continentList")
    }
}

struct CustomGroupBox: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading) {
            configuration.label
            configuration.content
        }
        .padding(.vertical, 20)
    }
}
