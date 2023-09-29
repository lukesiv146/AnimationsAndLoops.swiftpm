import SwiftUI

struct FlippingView1: View {
    
    @State var currentRotation = 0.0
    
    var body: some View {
        Button("Flips") {
            currentRotation += 360
        }
        .frame(width: 100, height: 50)
        .background(.blue)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
        //MARK: Stretch #1 - Part I
        
        
        
        
    }
}
