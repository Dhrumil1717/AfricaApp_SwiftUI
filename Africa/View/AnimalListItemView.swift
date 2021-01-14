//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Dhrumil Malaviya on 2021-01-13.
//

import SwiftUI

struct AnimalListItemView: View {
    
    let animals:Animal
    
    var body: some View
    {
        HStack (alignment: .center, spacing: 16)
        {
            Image(animals.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack (alignment: .leading, spacing: 8)
                {
                Text(animals.name)
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.accentColor)
                
                Text(animals.description)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing,8)
                }//VStack
        }//HSTACK
        
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
   
    static  let animalss: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        
        AnimalListItemView(animals: animalss[1]).previewLayout(.sizeThatFits).padding()
    }
}
