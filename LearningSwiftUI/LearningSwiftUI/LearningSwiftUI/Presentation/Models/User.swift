import SwiftUI
import CoreLocation

struct User: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var coordinates: Coordinates
    var category: String
    var team: String
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
}

extension User {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
