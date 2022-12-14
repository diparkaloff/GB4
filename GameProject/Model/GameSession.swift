//
//  GameSession.swift
//  GameProject
//
//  Created by Дмитрий Паркалов on 3.08.22.
//

import Foundation

class GameSession: Codable {
    
    var questions: [Question?] = []
    var totalQuestionsCount = 0
    var correctQuestionsCount = 0
    var totalPrize = 0
    var currentQuestion: Question?
    
    weak var gameDelegate: GameSessionDelegate?
    
    init(correctQuestionsCount: Int, totalPrize: Int, questions: [Question]) {
        self.questions = questions
        self.correctQuestionsCount = correctQuestionsCount
        self.totalPrize = totalPrize
        self.totalQuestionsCount = questions.count
    }
    
    init(correctQuestionsCount: Int) {
        self.correctQuestionsCount = correctQuestionsCount
        self.totalPrize = correctQuestionsCount * 100
    }
    
    func startGame() {
        guard let question = questions[0] else { return }
        
        currentQuestion = question
        gameDelegate?.showQuestion(question: question)
    }
    
    func increaseCorrectQuestionsCount() {
        correctQuestionsCount += 1
    }
    
    func checkIfAnswerIsCorrect(answer: String) -> Bool {
        if answer == currentQuestion?.correctAnswer {
            return true
        }
        return false    
    }
    
    func checkIfUserWouldContinueGame(userAnswer: Bool, currentQuestionNum: Int) {
        guard currentQuestionNum < questions.count else { return }
        if userAnswer == true {
            guard let question = questions[currentQuestionNum] else { return }
            currentQuestion = question
            gameDelegate?.showQuestion(question: question)
        }
    }
    
    required init(from decoder: Decoder) throws {
        
    }
    
    func encode(to encoder: Encoder) throws {
        
    }
}
