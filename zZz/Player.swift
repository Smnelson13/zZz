//
//  Player.swift
//  zZz
//
//  Created by Shane Nelson on 3/22/25.
//

import AVFoundation

class Player {
    
    private var audioPlayer: AVAudioPlayer?
    
    func playSound(sound: SoundForPath) {
        guard let path = Bundle.main.path(forResource: sound.rawValue, ofType: "wav") else { return }
        let url = URL(fileURLWithPath: path)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch {
            print("Error loading sound file: \(error.localizedDescription)")
        }
    }
}
