//
//  GameViewControllerDelegate.swift
//  GameProject
//
//  Created by Дмитрий Паркалов on 3.08.22.
//

import Foundation

protocol GameViewControllerDelegate: AnyObject {
    func showRecord(record: GameSession)
}
