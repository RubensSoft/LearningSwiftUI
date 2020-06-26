import SwiftUI

struct UserList: View {
    @State var showFavoritesOnly = false
    
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(userData) { user in
                    if !self.showFavoritesOnly || user.isFavorite {
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
