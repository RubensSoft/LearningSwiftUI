import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [User]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(self.items) { user in
                        NavigationLink(
                            destination: ProfileView(
                                user: user
                            )
                        ) {
                            CategoryItem(user: user)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryItem: View {
    var user: User
    var body: some View {
        VStack(alignment: .leading) {
            user.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 145, height: 155)
                .cornerRadius(5)
            Text(user.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(categoryName: userDataJson[0].category, items: Array(userDataJson.prefix(3)))
    }
}
