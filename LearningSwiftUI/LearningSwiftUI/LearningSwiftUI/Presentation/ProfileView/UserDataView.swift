import SwiftUI

struct UserDataView: View {
    var user: User
    
    var body: some View {
        HStack {
            VStack {
                Text(user.name)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding(.leading)
                
                Text(user.category)
                    .font(.subheadline)
            }
            Spacer()
            
            Text(user.team)
                .font(.title)
                .padding()
        }
        .padding()
    }
}

struct UserDataView_Previews: PreviewProvider {
    static var previews: some View {
        UserDataView(user: userData[0])
    }
}
