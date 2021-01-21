//
//  InsideFactView.swift
//  Africa
//
//  Created by Dhrumil Malaviya on 2021-01-14.
//

import SwiftUI

struct InsideFactView: View {
    let animal: Animal
    
    var body: some View
    {
        GroupBox
        {
            TabView{
                ForEach(animal.fact, id: \.self)
                {item in
                    Text(item)
                }
            }.tabViewStyle(PageTabViewStyle())
            .frame( idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//box
    }
}

struct InsideFactView_Previews: PreviewProvider {
    static let animals:[Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsideFactView(animal: animals[0])
            .previewLayout(.sizeThatFits).padding()
    }
}
