//
//  SoundForPath.swift
//  zZz
//
//  Created by Shane Nelson on 3/22/25.
//

enum SoundForPath: String, CaseIterable, Identifiable {
    case alarmTic = "AlarmTic"
    case metronome1 = "Metronome1"
    case reverbPluck = "ReverbPluck"
    case woodenPluck = "WoodenPluck"
    
    var id: String { self.rawValue }
    
    var displayName: String {
        switch self {
        case .alarmTic: 
            return "Alarm Tic"
        case . metronome1:
            return "Metronome 1"
        case . reverbPluck:
            return "Reverb Pluck"
        case . woodenPluck: 
            return "Wooden Pluck"
        }
    }
}
