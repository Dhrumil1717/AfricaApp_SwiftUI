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
            HeadingView(headingImage: "questionmark.circle", headingTitle: "Wilderness in Pictures")
           InsideFactView(animal: animals)
            
            //DESCRIPTION
            Group{
                HeadingView(headingImage: "info.circle", headingTitle: "All about \(animals.name)")
                Text(animals.description)
                    .multilineTextAlignment(.leading)
                    .layoutPriority(1)
            }
            //MAP
            Group{
                HeadingView(headingImage: "map", headingTitle: "National Parks")
                InsideMapView()

            }
            //LINKS
            
            Group{
                HeadingView(headingImage: "books.vertical", headingTitle: "Learn More")
                ExternalLinks(animal: animals)
            }
            
            VStack (alignment: .center,spacing:20)
            {
                
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
