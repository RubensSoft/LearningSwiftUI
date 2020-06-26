import SwiftUI

struct UserRow: View {
    var user: User
    
    var body: some View {
        HStack {
            user.image
            .resizable()
            .frame(width: 70, height: 70)
            
            Text(user.name)
                .padding(.leading)
            
            if user.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct UserRow_Previews: PreviewProvider {
    static var previews: some View {
        UserRow(user: userDataJson[0])
    }
}
