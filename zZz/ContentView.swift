//
//  ContentView.swift
//  zZz
//
//  Created by Shane Nelson on 3/21/25.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            
            ZStack(alignment: .center, content: {
                Image("")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .cornerRadius(10)
                    .background(Color.gray)
                Text("\(50)")
                    .font(.system(size: 100))
                    .bold()
                    .lineLimit(1)
                    .padding(.all, 10)
            })
            Spacer()

            
            VStack {
                Text("Dream a Little Dream of Me")
                    .font(.title2)
                    .bold()
                    .multilineTextAlignment(.center)
                
                Text("Hollow Box tic")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            HStack(spacing: 40) {
                Button(action: {
                    minusTapped()
                }) {
                    Image(systemName: "minus")
                        .font(.largeTitle)
                }
                .padding()
                
                Button(action: {
                    togglePlayPause()
                }) {
                    Image(systemName: "play.fill")
                        .font(.largeTitle)
                }
                .padding()
                Button(action: {
                    plusTapped()
                }) {
                    Image(systemName: "plus")
                        .font(.largeTitle)
                }
                .padding()
            }
            .padding(.top, 10)
            
            HStack {
                Image(systemName: "speaker.wave.2.fill")
                Slider(value: .constant(0.3), in: 0...1)
                    .padding(.horizontal, 20)
                Spacer()
                Image(systemName: "ellipsis")
                    .onTapGesture {
                         optionsTapped()
                    }
            }
            .padding()
            .font(.footnote)
            .foregroundColor(.gray)
        }
        .padding()
    }
}


// MARK: - ButtonActions
extension ContentView {
    func optionsTapped() {
        print("Todo, make an action sheet for the sound options enum.")
    }
    
    func togglePlayPause() {
        // Toggle image then call player to play.
    }
    
    func plusTapped() {
        
    }
    
    func minusTapped() {
        
    }
}


#Preview {
    ContentView()
}
