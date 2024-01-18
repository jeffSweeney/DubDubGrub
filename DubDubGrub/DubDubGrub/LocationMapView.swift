//
//  LocationMapView.swift
//  DubDubGrub
//
//  Created by Jeffrey Sweeney on 1/9/24.
//

import MapKit
import SwiftUI

struct LocationMapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.331516,
                                                                                  longitude: -121.891054),
                                                   span: MKCoordinateSpan(latitudeDelta: 0.01,
                                                                          longitudeDelta: 0.01))
    var body: some View {
        ZStack(alignment: .top) {
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
            
            HStack {
                Spacer()
                
                Image("ddg-map-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 70)
                .shadow(radius: 10)
            }
        }
    }
}

#Preview {
    LocationMapView()
}
