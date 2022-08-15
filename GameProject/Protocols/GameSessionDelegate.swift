//
//  GameSessionDelegate.swift
//  GameProject
//
//  Created by Дмитрий Паркалов on 3.08.22.
//

import Foundation

protocol GameSessionDelegate: AnyObject {
    func showQuestion(question: Question)
}
