//
//  VideoListView.swift
//  Africa
//
//  Created by Dhrumil Malaviya on 2021-01-13.
//

import SwiftUI

struct VideoListView: View {
    @State var video:[Videos] = Bundle.main.decode("videos.json")
    let hapticImpact = UIImpactFeedbackGenerator(style: .rigid)
    
    var body: some View
    {
        NavigationView
        {
            List
            {
                ForEach(video)
                { item in
                    
                    NavigationLink(destination:VideoPlayerView(videoSelected: item.id, videoTitle: item.name)) {
                        VideoListItem(video: item)
                            .padding(.vertical,8)
                    }
                }//Loop
            }.listStyle(InsetGroupedListStyle())//List STYLING
            .navigationBarTitle("Videos",displayMode: .inline)
            .toolbar
            {ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action:{
                            video.shuffle()
                        hapticImpact.impactOccurred()
                        
                    })
                        {Image(systemName: "arrow.2.squarepath")}
                    
                }
            }
        }//NavigationView
    }
}

struct VideoListView_Previews: PreviewProvider
{
    static var previews: some View
    {
        VideoListView()
    }
}
