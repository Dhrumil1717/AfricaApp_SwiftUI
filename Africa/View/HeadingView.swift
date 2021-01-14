//
//  HeadingView.swift
//  Africa
//
//  Created by Dhrumil Malaviya on 2021-01-13.
//

import SwiftUI

struct HeadingView: View {
    //MARK:-  Variables
    var headingImage: String
    var headingTitle:String
    
    var body: some View
    {
        HStack {
                Image(systemName: headingImage)
                    .foregroundColor(.accentColor)
                    .imageScale(.large)
            Text(headingTitle)
                .font(.title3)
                .fontWeight(.bold)
            
        }.padding(.vertical)
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingTitle: "Wilderness in picture").previewLayout(.sizeThatFits).padding()
    }
}
