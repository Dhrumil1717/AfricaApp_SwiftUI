//
//  CenterModifier.swift
//  Africa
//
//  Created by Dhrumil Malaviya on 2021-01-19.
//

import SwiftUI

struct CenterModifier:ViewModifier
{
    func body(content:Content)->some View{
        HStack{
            Spacer()
            content
            Spacer()
        }
        
    }//func
}
