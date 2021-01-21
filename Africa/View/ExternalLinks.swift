//
//  ExternalLinks.swift
//  Africa
//
//  Created by Dhrumil Malaviya on 2021-01-14.
//

import SwiftUI

struct ExternalLinks: View
{
    let animal:Animal
    var body: some View
    {
        GroupBox
        {
            HStack
            {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
               Group{
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name
                         , destination: (URL(string:animal.link) ?? URL(string: "https://wikipedia.org"))!)
                    
                }.foregroundColor(.accentColor)//Group
            }
            
        }//Box
       
    }
}

struct ExternalLinks_Previews: PreviewProvider {
    static let animals:[Animal] = Bundle.main.decode("animals.json")
    static var previews: some View
    {
        ExternalLinks(animal:animals[0]).previewLayout(.sizeThatFits).padding()
    }
}
