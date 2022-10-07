//
//  QuizBrain.swift
//  quiz.vida.araruama
//
//  Created by Vinicius Pinheiro de Oliveira on 03/10/22.
//

import Foundation

struct QuizBrain {
    
    let quiz = [
        Question(q: "O Guilherme tem 3 filhos.", a: "True"),
        Question(q: "A barbara quer ter filhos.", a: "True"),
        Question(q: "Vinicius é um cara bem legal", a: "True"),
        Question(q: "Rafael nunca fez merda", a: "False"),
        Question(q: "Tia Ivone curte Fluminense", a: "True"),
        Question(q: "Guilherme mijou na cama até os 14 anos de idade", a: "True"),
        Question(q: "Barbara ganhou na mega e não falou pra ninguem", a: "True"),
        Question(q: "Jacaré no seco anda?!", a: "True"),
        Question(q: "Maior time do mundo é o Gremio", a: "False"),
        Question(q: "Melhor console da História é o Super Nintendo", a: "True"),
        Question(q: "Guilherme tem medo de altura", a: "False"),
        Question(q: "Nome do cachorro da vizinha é Matheus", a: "True")
        
    ]
    
    var questionNumber = 0
    var score = 0
    var endingQuiz = 12
    
    
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer{
            score += 1
            return true
        } else {
            return false
        }
        
    }
    
    func getscore() -> Int {
        return score
    }
    
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
        
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber+1) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion(){
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
            
        } else {
            
            questionNumber = 0
            score = 0
        }
    }
    
    
        
        
    
    
}
