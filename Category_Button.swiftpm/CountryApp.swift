import SwiftUI

@main
struct CountryApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                MainView()
            }
            .navigationViewStyle(.stack)
        }
    }
}
