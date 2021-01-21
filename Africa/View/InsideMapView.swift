//
//  InsideMapView.swift
//  Africa
//
//  Created by Dhrumil Malaviya on 2021-01-14.
//

import SwiftUI
import MapKit

struct InsideMapView: View
{
    @State private var Region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    
    var body: some View
    {
            Map(coordinateRegion: $Region)
                .overlay(NavigationLink(
                            destination: MapView())
                {
            HStack{
                Image(systemName: "mappin.circle")
                    .foregroundColor(Color.white)
                    .imageScale(.large)
                
                Text("Locations")
                    .foregroundColor(.accentColor)
                    .fontWeight(.bold)
                        
                    }//HStack
            .padding(.vertical,10)
            .padding(.horizontal,14)
            .background(Color.black
                            .opacity(0.4)
                            .cornerRadius(0.8))
                    
                }//Navigation
                .padding(12)
                ,alignment: .topTrailing
                )
                .frame(height:256).cornerRadius(12)
    }
}

struct InsideMapView_Previews: PreviewProvider {
    static var previews: some View
    {
        InsideMapView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
