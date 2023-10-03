import SwiftUI

//MARK: Stretch #3

/* Remove the Text below and add any code needed
 * for your personal animation.
 */

struct ChoiceView: View {
    
    @State private var buttonPressed:Bool = false
    
    var body: some View {
        VStack {
                    
                    Button(action: {
                        withAnimation {
                            self.buttonPressed.toggle()
                        }
                        
                        // After a delay, spring the button back to its original position
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.33) {
                            withAnimation {
                                self.buttonPressed = false
                            }
                        }
                        
                    }) {
                        Text("Spring Button")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    .offset(y: buttonPressed ? -300 : 0) // Adjust the offset value based on your requirements
                    .animation(.spring(response: 0.5, dampingFraction: 0.25, blendDuration: 0)) // Spring animation

                }
    }
}

