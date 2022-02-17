//
//  ContentView.swift
//  Spotify Copy
//
//  Created by Ethan Rayala on 2/17/22.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @State var time: Double = 0
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.brown, .gray], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    
                    Image(systemName: "chevron.down")
                        .foregroundColor(.white)
                        .padding(30)
                        .font(.title2)
                    
                    Spacer()
                    
                    Text("Fearless (Taylor's Verson)")
                        .foregroundColor(.white)
                        .font(.caption)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Image(systemName: "ellipsis")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding(30)
                    
                }
                
                
                
                Image("fearless")
                    .resizable()
                    .scaledToFit()
                    .padding([.trailing, .leading], 20)
                    .padding([.top, .bottom], 40)
                
                HStack {
                    VStack (alignment: .leading){
                        Text("Fearless (Taylor's Version)")
                            .font(.title2)
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                        
                        Text("Taylor Swift")
                            .foregroundColor(.white)
                            .font(.body)
                            .fontWeight(.thin)
                            .frame(alignment: .leading)
                    }
                    .padding([.leading])
                    
                    
                    Spacer()
                    
                    Image(systemName: "suit.heart")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding([.trailing])
                }
                
                Slider(value: $time)
                    .padding([.leading, .trailing])
                    .accentColor(.white)
                
                var secondsPassed = round(241 * time)
                
                var minuites = Int(secondsPassed / 60)
                var seconds = Int(secondsPassed) % 60
                
                var minLeft = 3 - minuites
                var secondsLeft = (241 - seconds) % 60
                
                var sPassedText: String = "\(minuites):\(seconds)"
                var leftText: String = "\(minLeft):\(secondsLeft)"
                
                HStack {
                    Text("\(sPassedText)")
                        .foregroundColor(.white)
                        .font(.footnote)
                        .fontWeight(.thin)
                        .padding([.leading])
                        
                    Spacer()
                    
                    Text("-0\(leftText)")
                        .foregroundColor(.white)
                        .font(.footnote)
                        .fontWeight(.thin)
                        .padding([.trailing])
                }
                .padding([.bottom])
                
                HStack {
                    Image(systemName: "shuffle")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding([.leading])
                    
                    Spacer()
                    
                    Image(systemName: "backward.end.fill")
                        .font(.title)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Image(systemName: "play.circle.fill")
                        .font(.custom("playButton", size: 40))
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Image(systemName: "forward.end.fill")
                        .font(.title)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Image(systemName: "repeat")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding([.trailing])
                    
                    
                }
                
                Spacer()
                
                HStack {
                    Image(systemName: "tv.and.hifispeaker.fill")
                        .foregroundColor(.white)
                        .font(.body)
                        .padding([.leading])
                    
                    Spacer()
                    
                    Image(systemName: "square.and.arrow.up")
                        .foregroundColor(.white)
                        .font(.body)
                        .padding(10)
                    
                    Image(systemName: "text.insert")
                        .foregroundColor(.white)
                        .font(.body)
                        .padding([.trailing])
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
