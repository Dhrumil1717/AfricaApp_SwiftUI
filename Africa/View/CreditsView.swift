//
//  CreditsView.swift
//  Africa
//
//  Created by Dhrumil Malaviya on 2021-01-19.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128, alignment: .center)
            Text("""
    Copyright © Dhrumil Malaviya
    All right reserved
     ❤️
    """)
                .font(.footnote)
                .multilineTextAlignment(.center)
        }//VSTACK
        .padding()
        .opacity(0.4)
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
