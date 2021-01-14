//
//  AnimalDetailsView.swift
//  Africa
//
//  Created by Dhrumil Malaviya on 2021-01-13.
//

import SwiftUI

struct AnimalDetailsView: View {
    //MARK:- Variables
    
    let animals: Animal
    //MARK:- Body
    var body: some View
    {
        NavigationView
        {
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false)
        {
           //HERO IMAGE
            Image(animals.image)
                .resizable().scaledToFit()
            
            //TITLE
            Text(animals.name.uppercased())
                .font(.largeTitle)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .padding(.vertical,8)
                .foregroundColor(.primary)
                .background(
                    Color.accentColor
                        .frame(height:6)
                        .offset(y:24)
                            )
            
            //HEADLINE
            Text(animals.headline)
                .font(.headline)
                .multilineTextAlignment(.leading)
                .foregroundColor(.accentColor)
                .padding(.horizontal)
            
            //GALLERY
            Group{
                HeadingView(headingImage: "photo.on.rectangle.angled", headingTitle: "Wilderness in Pictures")
                InsideGalleryView(animal: animals)
            }
            
            //FACTS
            
            //DESCRIPTION
            
            //MAP
        
            //LINKS
            
            VStack (alignment: .center,spacing:20)
            {
                Text("Placeholder")
            }.navigationBarTitle("Learn about \(animals.name)",displayMode: .inline)
        }//ScrollView
        }//NavigationVIew
        
    }
}
//Mark:- Previews
struct AnimalDetailsView_Previews: PreviewProvider {
    static var animalss: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View
    {
        AnimalDetailsView(animals: animalss[1])
    }
}
