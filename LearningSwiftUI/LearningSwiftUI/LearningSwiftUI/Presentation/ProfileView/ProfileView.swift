import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var userData: UserData
    var user: User
    var userIndex: Int {
        userData.user.firstIndex(where: { $0.id == user.id })!
    }

    var body: some View {
        VStack {
            ImageView(image: user.image)
            UserDataView(userData: self._userData, user: user)
            MapView(locationCordinate: user.locationCoordinate)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: userDataJson[0]).environmentObject(UserData())
    }
}
