import SwiftUI

struct MovingView: View {
    
    @State var xPosition:CGFloat = 0
    @State var yPosition:CGFloat = 0
    
    var body: some View {
        VStack {
            Text("Moves")
                .frame(width: 100, height: 50)
                .background(.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                .offset(x: xPosition, y: yPosition)
            
            //MARK: Stretch #2
            HStack{
                Image(systemName: "arrow.up")
                    .onTapGesture {
                        yPosition -= 10
                    }
                Image(systemName: "arrow.left")
                    .onTapGesture {
                        xPosition -= 10
                    }
                Image(systemName: "arrow.right")
                    .onTapGesture {
                        xPosition += 10
                    }
                Image(systemName: "arrow.down")
                    .onTapGesture {
                        yPosition += 10
                    }
            }
            

        }
        
    }
}

