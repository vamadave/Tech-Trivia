//
//  WelcomeView.swift
//  Vama's Code History Plus
//
//  Created by Vama Dave on 2021-08-06.
//

import SwiftUI

struct WelcomeView: View {
 
    var body: some View {
        NavigationView{
            ZStack{
                (GameColor.main).ignoresSafeArea()
                VStack{
                    Spacer()
                    VStack(alignment: .leading, spacing: 0){
                        Text("Select the correct answers to the following questions.")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                    Spacer()
                    NavigationLink(destination: GameView(),
                                   label: {
                                    BottomTextView(str: "Okay, let's go!")
                                   })
                }
                .foregroundColor(.white)
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

