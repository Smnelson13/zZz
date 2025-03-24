//
//  ContentView.swift
//  zZz
//
//  Created by Shane Nelson on 3/21/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var bpmCount: Int = 60
    @State private var isPlaying: Bool = false
    @StateObject private var soundPlayer = SoundPlayer()
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            
            ZStack(alignment: .center, content: {
                Image(systemName: "sleep")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .cornerRadius(10)
                    .background(Color.gray)
                    .opacity(0.0) // TODO: - Fix me.
                Text("\(bpmCount)")
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
                
                Text("Hollow Box tic sound")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            HStack(spacing: 40) {
                Button(action: {
                    bpmCount -= 1
                }) {
                    Image(systemName: "minus")
                        .font(.largeTitle)
                }
                .padding()
                
                Button(action: {
                    isPlaying ? soundPlayer.stopSound() : soundPlayer.playSound(bpm: bpmCount)
                    isPlaying.toggle()
                }) {
                    Image(systemName: isPlaying ? "pause.fill" : "play.fill")
                        .font(.largeTitle)
                }
                .padding()
                Button(action: {
                    bpmCount += 1
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
        // Use confirmationDialog instead of deprecated actionSheet.
    }
}


#Preview {
    ContentView()
}
