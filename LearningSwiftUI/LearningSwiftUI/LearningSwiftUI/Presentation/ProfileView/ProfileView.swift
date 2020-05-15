import SwiftUI

struct ProfileView: View {
    var user: User

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
        ProfileView(user: userData[0])
    }
}
