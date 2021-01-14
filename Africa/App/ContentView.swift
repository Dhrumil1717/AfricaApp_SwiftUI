//
//  ContentView.swift
//  Africa
//
//  Created by Dhrumil Malaviya on 2021-01-13.
//

import SwiftUI

struct ContentView: View {
    
    let animal : [Animal] = Bundle.main.decode("animals.json")
    var body: some View {
       
        NavigationView{
            List{
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                ForEach(animal)
                    {items in
                    NavigationLink(destination: AnimalDetailsView(animals: items))
                    {
                    AnimalListItemView(animals:items )
                    }//link
                }//Loop
            }.navigationBarTitle("Africa",displayMode: .large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
