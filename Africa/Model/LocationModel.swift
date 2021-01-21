//
//  LocationModel.swift
//  Africa
//
//  Created by Dhrumil Malaviya on 2021-01-15.
//

import Foundation
import SwiftUI
import MapKit

struct NationalParkLoaction:Codable,Identifiable
{
    var id: String
    var name:String
    var image:String
    var latitude:Double
    var longitude:Double
    
    //Computed property
    var location : CLLocationCoordinate2D
    { (CLLocationCoordinate2D(latitude: latitude, longitude: longitude))
    }
}
