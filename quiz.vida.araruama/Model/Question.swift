//
//  Question.swift
//  quiz.vida.araruama
//
//  Created by Vinicius Pinheiro de Oliveira on 03/10/22.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
    
}
