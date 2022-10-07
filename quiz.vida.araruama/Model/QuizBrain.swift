//
//  QuizBrain.swift
//  quiz.vida.araruama
//
//  Created by Vinicius Pinheiro de Oliveira on 03/10/22.
//

import Foundation

struct QuizBrain {
    
    let quiz = [
        Question(q: "Araruama é a terra do Lazer", a: "True"),
        Question(q: "A Barbara quer ter filhos.", a: "false"),
        Question(q: "Vinicius é um cara bem legal", a: "True"),
        Question(q: "Rafael nunca fez merda", a: "False"),
        Question(q: "Tia Ivone dorme com pé sujo", a: "True"),
        Question(q: "Guilherme é um cavalheiro", a: "True"),
        Question(q: "Barbara ganhou na mega e não falou pra ninguem", a: "True"),
        Question(q: "Guilherme, Rafael e Vinicius usavam a piscina do vizinho", a: "True"),
        Question(q: "Rafael se assustava com facilidade", a: "True"),
        Question(q: "Melhor console da História é o Super Nintendo", a: "True"),
        Question(q: "Guilherme ta ficando careca", a: "True"),
        Question(q: "Na porrada Vinicius ganha do Rafael", a: "True")
        
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
