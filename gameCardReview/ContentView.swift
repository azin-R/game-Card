//
//  ContentView.swift
//  gameCardReview
//
//  Created by azin on 2/5/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card2"
    @State var cpuCard = "card3"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    
    var body: some View {
        
  
       
      
        
        
        ZStack {
            
           
            
            Image ("background").ignoresSafeArea()
            
            Spacer()
            
            VStack {
                
                Spacer()
                
                Image ("logo")
                   
                    
                
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    Image (playerCard)
                    
                    Spacer()
                    
                    Image (cpuCard)
                    
                    Spacer()
                    
                }
                
                Spacer()
                
                Button(action: {
                        
                        let  playerrand = Int.random(in: 2...14)
                        let cpurand = Int.random(in: 2...14)
                        
                        playerCard = "card" + String(playerrand)
                        cpuCard = "card" + String(cpurand)
                        
                        if playerrand > cpurand {
                            
                            playerScore += 1
                            
                        }
                        
                       else if cpurand > playerrand {
                            
                            cpuScore += 1
                        }
                        
                      else {
                            
                            playerScore += 0
                            cpuScore += 0
                        }
                        
                    }, label: {
                        Image ("dealbutton").resizable().aspectRatio( contentMode: .fit).frame(width: 200.0)
                    }
                )
                
                
                
                
                
                Spacer()
                
                HStack{
                
                    Spacer()
                    
                    VStack{
                        Text ("player").font(.largeTitle).foregroundColor(.white)
                        Text (String(playerScore)).font(.largeTitle).foregroundColor(.white)
                    }
                    
                    Spacer()
                    
                    VStack{
                        Text ("CPU").font(.largeTitle).foregroundColor(.white)
                        Text (String(cpuScore)).font(.largeTitle).foregroundColor(.white)
                    }
                    Spacer()
                }
                
                Spacer()
                
            }
        
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
