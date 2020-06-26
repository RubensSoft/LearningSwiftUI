import SwiftUI

struct UserList: View {
    @EnvironmentObject var userData: UserData

    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(userData.user) { user in
                    if !self.userData.showFavoritesOnly || user.isFavorite {
                        NavigationLink(destination: ProfileView(user: user)) {
                            UserRow(user: user)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("User List"))
        }
    }
}

struct UserList_Previews: PreviewProvider {
    static var previews: some View {
        UserList()
    }
}
