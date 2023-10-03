import SwiftUI

struct FlippingView2: View {
    @State private var flip2: Bool = false
    @State var currentRotation = 0.0
    
    var body: some View {
        Button(action: {
            //MARK: Stretch #1 - Part II
            
            withAnimation(.easeIn(duration: 1.0)) {
                currentRotation += 360
            }
        }, label: {
            Text("Flips")
                .frame(width: 100, height: 50)
                .background(.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
            //MARK: Stretch #1 - Part III
                .rotation3DEffect(
                    Angle(degrees: currentRotation),
                    axis: (x: 1.0, y: 0.0, z: 0.0),
                    anchor: .center,
                    anchorZ: 0.0,
                    perspective: 1.0)
        })
    }
}
