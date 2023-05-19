//
//  ContentView.swift
//  warCardGame
//
//  Created by Chidu Anush on 19/05/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    var playerScore = "0"
    var cpuScore = "0"
    
    var body: some View {
        
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Image("logo")
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }


                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player").font(.headline).padding(.bottom, 10.0)
                        Text(playerScore).font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU").font(.headline).padding(.bottom, 10.0)
                        Text(cpuScore).font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
                
                
            }
        }
        
        
    }
    
    func deal() {
        //to randomly display player and cpu cards
        
        //for player vard
        playerCard = "card" + String(Int.random(in: 2...14))
        
        //for cpu card
        cpuCard = "card" + String(Int.random(in: 2...14))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
