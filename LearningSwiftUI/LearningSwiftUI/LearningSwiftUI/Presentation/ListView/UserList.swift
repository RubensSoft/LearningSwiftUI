import SwiftUI

struct UserList: View {
    @EnvironmentObject var userDataFav: UserData

    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userDataFav.showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(userDataFav.user) { user in
                    if !self.userDataFav.showFavoritesOnly || user.isFavorite {
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
