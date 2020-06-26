import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var userDataFav: UserData
    var user: User
    
    var userIndex: Int {
        userDataFav.user.firstIndex(where: { $0.id == user.id })!
    }

    var body: some View {
        VStack {
            ImageView(image: user.image)
            UserDataView(user: user)
            MapView(locationCordinate: user.locationCoordinate)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: userData[0]).environmentObject(UserData())
    }
}
