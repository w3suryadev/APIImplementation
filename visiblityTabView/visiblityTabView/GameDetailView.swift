import SwiftUI

struct GameDetailView: View {
    let gameName: String

    var body: some View {
        Text(gameName)
            .font(.largeTitle)
            .multilineTextAlignment(.center)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .navigationTitle(gameName)
    }
}
