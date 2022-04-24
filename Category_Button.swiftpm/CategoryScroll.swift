import SwiftUI

struct CategoryTextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 30))
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 30)
                .stroke(.blue, lineWidth: 3))
    }
}

extension View {
    func asCategoryModifier() -> some View {
        modifier(CategoryTextModifier())
    }
}

struct CategoryScrollView: View {
    @Binding var currentIndex: Int
    @Binding var continentList: [String]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(continentList, id: \.self) { value in
                    Button(action: {
                        currentIndex = continentList.firstIndex(of: value)!
                    }) {
                        continentList.firstIndex(of: value)! == currentIndex ? Text(value)
                            .asCategoryModifier()
                            .foregroundColor(.white)
                            .background(RoundedRectangle(cornerRadius: 30).fill(.blue))
                        : Text(value)
                            .asCategoryModifier()
                            .foregroundColor(.blue)
                            .background(RoundedRectangle(cornerRadius: 30).fill(.white))
                    }
                        .padding(EdgeInsets(.init(top: 5, leading: 10, bottom: 5, trailing: 10)))
                }
            }
        }
    }
}
