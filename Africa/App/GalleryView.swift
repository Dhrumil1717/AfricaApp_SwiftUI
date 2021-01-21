//
//  GalleryView.swift
//  Africa
//
//  Created by Dhrumil Malaviya on 2021-01-13.
//

import SwiftUI

struct GalleryView: View {
    @State private var selectedImage :String = "lion"
    let animals:[Animal] = Bundle.main.decode("animals.json")
    let haptics = UIImpactFeedbackGenerator(style:.medium)
    
    ////Simple grid definition
    //let gridLayout:[GridItem] = [
    //                            GridItem(.flexible()),
    //                            GridItem(.flexible()),
    //                            GridItem(.flexible())
    //                            ]
    
    //EFFICIENT GRID DEFINITION
   // let gridLayout:[GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    
    //DYNAMIC GIRD LAYOUT
    
    @State private var gridLayout:[GridItem] = [GridItem(.flexible())]
    @State private var gridColoumn:Double = 3.0
    
    func gridSwitch()
    {
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColoumn))
    }
    var body: some View
    {
        ScrollView(.vertical,showsIndicators:false)
        {
           
            
            VStack(alignment:.center,spacing:10) {
                Image(selectedImage)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white,lineWidth: 8))
                
                //Mark:- SLider
                Slider(value:$gridColoumn,in:2...4,step:1)
                    .padding(.horizontal,10)
                    .onChange(of: gridColoumn, perform: { value in
                        gridSwitch()
                    })
                
                //MARK:-GRID
                LazyVGrid(columns:gridLayout, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10)
                {
                
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white,lineWidth: 1))
                            .onTapGesture {
                                selectedImage=item.image
                                haptics.impactOccurred()
                            }
                    }
                }//grid
                .onAppear(perform: {
                    gridSwitch()
                })
                .animation(.easeIn)
            }//Vstack
            .padding(.vertical,50)
            .padding(.horizontal,10)
            
            
            
        }.frame(maxWidth:.infinity,maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
