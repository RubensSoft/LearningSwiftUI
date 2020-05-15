import SwiftUI

struct UserList: View {
    var body: some View {
        NavigationView {
            List(userData) { user in
                NavigationLink(destination: ProfileView(user: user)) {
                    UserRow(user: user)
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
