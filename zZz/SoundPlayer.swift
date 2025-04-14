//
//  SoundPlayer.swift
//  zZz
//
//  Created by Shane Nelson on 3/22/25.
//

import AVFoundation

class SoundPlayer: ObservableObject {
    var audioPlayer: AVAudioPlayer?
    var timer: Timer?
    
    func playSound(bpm: Int, forSound: SoundForPath) {
        let interval = 60.0 / Double(bpm) // Time per beat
        print(forSound)
        // Load sound
        if let soundURL = Bundle.main.url(forResource: forSound.rawValue, withExtension: "wav") {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
                audioPlayer?.prepareToPlay()
            } catch {
                print("Error loading sound: \(error.localizedDescription)")
            }
        }

        // Start the timer
        timer?.invalidate() // Stop previous timer if running
        timer = Timer.scheduledTimer(withTimeInterval: interval, repeats: true) { _ in
            self.audioPlayer?.play()
        }
    }
    
    func stopSound() {
        timer?.invalidate()
    }
}
