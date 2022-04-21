import SwiftUI

struct ListView: View {
    var continent: String
    @Binding var currentIndex: Int
    @Binding var continentList: [String]

    var body: some View {
        VStack {
            CategoryScroll(currentIndex: $currentIndex, continentList: $continentList)

            Text("\(currentIndex)")
        }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("continentList")
    }
}
