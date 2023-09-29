import SwiftUI

struct AnimationsView: View {
    
    var body: some View {
        HeaderView(name: "Animations Challenge")
        Spacer()
        VStack(spacing: 50) {
            Text("MVP").underline(true, color: Color.black)
            HStack(spacing: 50) {
                SpinningView1()
                SpinningView2()
            }
            Text("Stretch #1").underline(true, color: Color.black)
            HStack(spacing: 50) {
                 FlippingView1()
                 FlippingView2()
            }
           
            Text("Stretch #2").underline(true, color: Color.black)
            HStack(spacing: 50) {
                MovingView()
            }
            
            Text("Stretch #3").underline(true, color: Color.black)
            HStack(spacing: 50) {
                ChoiceView()
            }
        }
        Spacer()
        FooterView()
    }
}










