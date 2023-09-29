import SwiftUI

struct SpinningView2: View {
    
    @State var currentDegree = 0.0
    
    var body: some View {
        Button(action: {
            currentDegree += 360
        }, label: {
            Text("Spins")
                .frame(width: 100, height: 50)
                .background(.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
            //MARK: MVP - Part III
                
            
            
            
            
        })
    }
}
