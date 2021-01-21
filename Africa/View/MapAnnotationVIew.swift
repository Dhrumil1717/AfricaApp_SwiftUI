//
//  MapAnnotationVIew.swift
//  Africa
//
//  Created by Dhrumil Malaviya on 2021-01-18.
//

import SwiftUI

struct MapAnnotationVIew: View {
    var location: NationalParkLoaction
    @State private var animation: Double = 0.0
    
    var body: some View {
        ZStack
        {
             Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment:.center)
                
                Circle()
                    .stroke(Color.accentColor)
                    .frame(width: 52 , height: 52, alignment:.center)
                    .scaleEffect(1+CGFloat(animation))
                    .opacity(1-animation)
        
                Image(location.image)
                .resizable()
                .scaledToFit()
               .frame(width: 48, height: 48, alignment:.center)
                .clipShape(Circle())
            
        }//ZStack
        .onAppear{
            withAnimation(Animation
                            .easeOut(duration: 2)
                            .repeatForever(autoreverses: false))
                {
                animation = 1            }
        }
        
        
    }
}

struct MapAnnotationVIew_Previews: PreviewProvider
{
    static var locations:[NationalParkLoaction] = Bundle.main.decode("locations.json")
    static var previews: some View {
        MapAnnotationVIew(location:locations[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
