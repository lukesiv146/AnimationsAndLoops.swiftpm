import SwiftUI

struct HeaderView: View {
    let name: String
    var body: some View {
        Group {
            Divider()
            Text("\(name)")
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.title)
            Divider()
        }
    }
}

