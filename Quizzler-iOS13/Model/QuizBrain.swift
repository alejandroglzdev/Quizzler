//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Carlos Gonzalez2 on 28/3/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        QuizQuestion(question: "A slug's blood is green.", answer: true),
        QuizQuestion(question: "Approximately one quarter of human bones are in the feet.", answer: true),
        QuizQuestion(question: "The total surface area of two human lungs is approximately 70 square metres.", answer: true),
        QuizQuestion(question: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", answer: true),
        QuizQuestion(question: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", answer: false),
        QuizQuestion(question: "It is illegal to pee in the Ocean in Portugal.", answer: true),
        QuizQuestion(question: "You can lead a cow down stairs but not up stairs.", answer: false),
        QuizQuestion(question: "Google was originally called 'Backrub'.", answer: true),
        QuizQuestion(question: "Buzz Aldrin's mother's maiden name was 'Moon'.", answer: true),
        QuizQuestion(question: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", answer: false),
        QuizQuestion(question: "No piece of square dry paper can be folded in half more than 7 times.", answer: false),
        QuizQuestion(question: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", answer: true)
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: Bool) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
            
        } else {
            return false
        }
    }
    
    func getQuestion() -> String {
        quiz[questionNumber].question
    }
    
    func getProgressBarPercentage() -> Float {
        Float(questionNumber + 1) / Float(quiz.count)
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count{
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    func getScore() -> Int{
        score
    }
    
}
