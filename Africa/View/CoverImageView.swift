//
//  CoverImageView.swift
//  Africa
//
//  Created by Dhrumil Malaviya on 2021-01-13.
//

import SwiftUI

struct CoverImageView: View {
    //MARK:- PROPERTIES
     
    let coverImages : [CoverImage] = Bundle.main.decode("covers.json")
    //MARK:- BODY
    
    var body: some View
    {
        
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }//LOOP
        }//TABVIEW
        .tabViewStyle(PageTabViewStyle())
    }//VIEW
}
    //MARK:- PREVIEWS
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView().previewLayout(.fixed(width: 400, height: 300))
    }
}
