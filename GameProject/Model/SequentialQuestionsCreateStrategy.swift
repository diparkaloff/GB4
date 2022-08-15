//
//  SequentialQuestionsCreateStrategy.swift
//  GameProject
//
//  Created by Дмитрий Паркалов on 15.08.22.
//

import Foundation

final class SequentialQuestionsCreateStrategy: CreateSequenceStrategy {
    func createSequense() -> [Question] {
        return Game.shared.questions
    }
}
