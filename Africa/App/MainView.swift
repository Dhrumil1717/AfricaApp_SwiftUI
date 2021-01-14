//
//  MainView.swift
//  Africa
//
//  Created by Dhrumil Malaviya on 2021-01-13.
//

import SwiftUI

struct MainView: View {
    var body: some View {
//    --------------------------------------TAB VIEW------------------------------------
        TabView{
            ContentView()
                .tabItem
                {
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }//ContentView
            VideoListView()
                .tabItem
                {
                    Image(systemName: "play.rectangle")
                    Text("Video")
                }//VideoListView
            MapView()
                .tabItem
                {
                    Image(systemName: "map")
                    Text("Location")
                }//Mapview
            GalleryView()
                .tabItem
                {
                    Image(systemName: "photo")
                    Text("Gallery")
                }//GalleryView
            
        
        }//TabView
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
