import SwiftUI

struct ImageView: View {
    var image: Image
    
    var body: some View {
        image
            .resizable().scaledToFit()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
        .shadow(radius: 10)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image: Image("anonymous"))
    }
}
