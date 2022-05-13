//
//  ContentView.swift
//  Shared
//
//  Created by Purin Singkaew on 16/4/22.
//

import SwiftUI

struct ContentView: View
{
    @State var playerCard = "back"
    @State var cpuCard = "back"
    @State var playerscore = 0
    @State var cpuscore = 0
    
    var body: some View
    {
        ZStack
            {
                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                VStack
                {
                    Spacer()
                    
                    Image("logo").padding()
                    
                    Spacer()
                    
                    HStack
                    {
                        Image(playerCard)
                        Spacer()
                        Image(cpuCard)

                    } .padding()
                    
                    Spacer()
                    
                   
                    Button(action:
                            {
                                let playerRand = Int.random(in: 2...14)
                                let cpuRand = Int.random(in: 2...14)
                                playerCard = "card" + String(playerRand)
                                cpuCard = "card" + String(cpuRand)
                                
                                if (playerRand > cpuRand)
                                    {
                                        playerscore += 1
                                    }
                                if (cpuRand > playerRand)
                                    {
                                        cpuscore += 1
                                    }
                            },
                           label:
                            {
                                Image("dealbutton")
                            })

                    
                    Spacer()
                    
                    HStack
                    {
                        Spacer()
                        
                        VStack
                        {
                            Text("Player")
                            Text(String(playerscore))
                        } .font(.title).padding()
                        
                        Spacer()
                        
                        VStack
                        {
                            Text("CPU")
                            Text(String(cpuscore))
                        } .font(.title).padding()
                        
                        Spacer()
                    } .padding()
                        .foregroundColor(Color.white)
                    
                    Spacer()
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
               
            } .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
