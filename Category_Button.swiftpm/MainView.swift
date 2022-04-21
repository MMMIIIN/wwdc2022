import SwiftUI

struct MainView: View {
    private static let initialColumns = 2
    @State private var gridColumns = Array(repeating: GridItem(.flexible()), count: initialColumns)
    @State private var continentList = ["Asia", "Europe", "South America", "North America", "Africa", "Middle East"]
    @State var currentIndex = 0
    @State var isListViewActive = false

    var body: some View {
        LazyVGrid(columns: gridColumns) {
            ForEach(continentList, id: \.self) {
                value in
                Button(action: {
                    currentIndex = continentList.firstIndex(of: value)!
                    isListViewActive = true
                }) {
                    Text(value)
                        .foregroundColor(.white)
                        .font(.system(size: 35))
                        .frame(width: 300, height: 300)
                        .background(RoundedRectangle(cornerRadius: 20)
                            .fill(.black))
                    NavigationLink(destination: ListView(continent: value, currentIndex: $currentIndex, continentList: $continentList),
                        isActive: $isListViewActive)
                    { EmptyView() }
                }
                    .padding()
            }
        }
    }
}
