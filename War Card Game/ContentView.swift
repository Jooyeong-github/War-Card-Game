//
//  ContentView.swift
//  War Card Game
//
//  Created by t2023-m0031 on 11/15/23.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                
                HStack{
                    Image(playerCard)
                    Image(cpuCard)
                }
                Spacer()
                Button(action: {
                    deal()
                }, label: {
                    Image("button")
                })
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .padding(.bottom, 10.0)

                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .padding(.bottom, 10.0)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    }
    
    func deal(){
        var playCardValue = Int.random(in: 2...14)
        var cpuCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playCardValue)
        cpuCard = "card" + String(cpuCardValue)
        
        if playCardValue > cpuCardValue {
            playerScore += 1
        }
        else {
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
