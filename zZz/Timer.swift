//
//  Timer.swift
//  zZz
//
//  Created by Shane Nelson on 3/21/25.
//

import Foundation

class Timer {
    private var timer: Foundation.Timer?
    private var bpm: Int
    
    init(bpm: Int) {
        self.bpm = bpm
    }
    
    func start() {
        stop() // Ensure any existing timer is stopped before starting a new one
        let interval = 60.0 / Double(bpm) // Convert BPM to time interval
        timer = Foundation.Timer.scheduledTimer(withTimeInterval: interval, repeats: true) { _ in
            print("Eureka")
        }
        RunLoop.current.add(timer!, forMode: .common)
    }
    
    func stop() {
        timer?.invalidate()
        timer = nil
    }
}
