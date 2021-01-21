//
//  MapView.swift
//  Africa
//
//  Created by Dhrumil Malaviya on 2021-01-13.
//

import SwiftUI
import MapKit

struct MapView: View
{
    @State private var Region : MKCoordinateRegion =
        {
        var mapCordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0)
        var mapRegion = MKCoordinateRegion(center: mapCordinates, span: mapZoomLevel)
            
            return mapRegion
    }()
    
    let locations:[NationalParkLoaction] = Bundle.main.decode("locations.json")
    
    var body: some View
    {
        //MARK:-Basic map
        //Map(coordinateRegion: $Region)
        
        //MARK:-Advance Map
        Map(coordinateRegion: $Region, annotationItems: locations, annotationContent:
                {
                item in
            //MARK:- Old style (always static)
            // MapPin(coordinate: item.location,tint: .accentColor)
                    
            //MARK:-New Style (always static)
            //MapMarker(coordinate: item.location,tint: .accentColor)
            
            //MARK:-Custom basic annotation
//            MapAnnotation(coordinate: item.location)
//            {
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width:32,height: 32,alignment: .center)
//            }
                    
            //MARK:- Custom Advance anotation
                    MapAnnotation(coordinate: item.location)
                    {
                        MapAnnotationVIew(location: item)
                    }

        }
        )//:Map
        .overlay(
            HStack(alignment:.center,spacing:12)
            {
                Image("compass")
                    .resizable().scaledToFit()
                    .frame(width: 48, height: 48, alignment:.center)
                
                VStack(alignment:.leading,spacing:3)
                {
                    HStack{
                        Text("Latitude")
                            .font(.footnote)
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                        Spacer()
                        Text("\(Region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                    }
                    Divider()
                    HStack{
                        Text("Longitude")
                            .font(.footnote)
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                        Spacer()
                        Text("\(Region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                    }
                }
            }//:Hstack
            .padding(.vertical,12)
            .padding(.horizontal,16)
            .background(Color.black
                            .cornerRadius(8)
                            .opacity(0.6))
            .padding()
            ,alignment: .top
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
