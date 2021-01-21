//
//  VideoModel.swift
//  Africa
//
//  Created by Dhrumil Malaviya on 2021-01-14.
//

import SwiftUI

struct Videos:Codable,Identifiable
{
    let id:String
    let name:String
    let headline:String
    //computed property
    var thumbnail:String
    {
        "video-\(id)"
    }
}
