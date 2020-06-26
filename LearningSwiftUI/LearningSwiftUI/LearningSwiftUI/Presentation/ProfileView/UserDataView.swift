import SwiftUI

struct UserDataView: View {
    @EnvironmentObject var userData: UserData
    var user: User
    var userIndex: Int {
        userData.user.firstIndex(where: { $0.id == user.id })!
    }
    
    var body: some View {
        HStack {
            VStack {
                Text(user.name)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding(.leading)
                
                Button(action: {
                    self.userData.user[self.userIndex].isFavorite.toggle()
                }) {
                    if self.userData.user[self.userIndex].isFavorite {
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.yellow)
                    } else {
                        Image(systemName: "star")
                            .foregroundColor(Color.gray)
                    }
                }
                
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
        UserDataView(user: userDataJson[0])
    }
}
