import SwiftUI
import MapKit

class Marker: NSObject, MKAnnotation {
    let coordinate: CLLocationCoordinate2D
    init(coordinate: CLLocationCoordinate2D) {
        self.coordinate = coordinate
    }
}

struct MapView: UIViewRepresentable {
    var locationCordinate: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: locationCordinate.latitude , longitude: locationCordinate.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
        
        let marker = Marker(coordinate: coordinate)
        uiView.addAnnotation(marker)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(locationCordinate: userData[0].locationCoordinate)
    }
}
