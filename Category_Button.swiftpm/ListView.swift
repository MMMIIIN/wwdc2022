import SwiftUI

struct ListView: View {
    var continent: String

    @Binding var currentIndex: Int
    @Binding var continentList: [String]

    var body: some View {
        VStack {
            CategoryScroll(currentIndex: $currentIndex, continentList: $continentList)
            CountryListView(currentIndex: $currentIndex, continentList: $continentList)
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
