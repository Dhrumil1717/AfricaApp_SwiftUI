//
//  InsideGalleryView.swift
//  Africa
//
//  Created by Dhrumil Malaviya on 2021-01-13.
//

import SwiftUI

struct InsideGalleryView: View {
    
    let animal:Animal
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators:false)
        {
        HStack (alignment:.center,spacing: 15){
            ForEach(animal.gallery,id:\.self) { item in
                Image(item)
                    .resizable()
                    .scaledToFit()
                    .frame(height:200)
                    .cornerRadius(12)
            }
        }
        }//Hstack
    }
}

struct InsideGalleryView_Previews: PreviewProvider {
    static var animalss:[Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsideGalleryView(animal: animalss[0]).previewLayout(.sizeThatFits).padding()
    }
}
