import SwiftUI

struct ListView: View {
    var continent: String
    @Binding var currentIndex: Int
    @Binding var continentList: [String]

    var body: some View {
        VStack {
            CategoryScrollView(currentIndex: $currentIndex, continentList: $continentList)
            CountryListView(currentIndex: $currentIndex, continentList: $continentList)
        }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("continentList")
    }
}
