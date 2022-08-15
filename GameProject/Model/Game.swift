//
//  Game.swift
//  GameProject
//
//  Created by Дмитрий Паркалов on 3.08.22.
//

import Foundation

class Game {
    
    static let shared = Game()
    private let recordsCareTaker = RecordsCaretaker()
    
    private(set) var records: [GameSession] {
        didSet {
            recordsCareTaker.save(records: records)
        }
    }
    
    var currentSession: GameSession?
    
    func addRecord(_ record: GameSession) {
        records.append(record)
    }
    
    private init() {
        records = recordsCareTaker.retreveRecords()
    }
}
