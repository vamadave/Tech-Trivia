//
//  BottomTextView.swift
//  Vama's Code History Plus
//
//  Created by Vama Dave on 2021-08-10.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
    
    var body: some View {
        HStack{
            Spacer()
        Text(str)
            .font(.body)
            .bold()
            .padding()
        Spacer()
            
        }.background(GameColor.accent)
  }
}

struct BottomTextView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTextView(str: "Test")
    }
}
