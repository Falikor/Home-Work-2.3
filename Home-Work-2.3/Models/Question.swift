//
//  Question.swift
//  Home-Work-2.3
//
//  Created by Татьяна Татьяна on 29.05.2021.
//

import Foundation

struct Question {
    let title: String
    let answers: Int
    
    static func getQuestion() -> [Question] {
        [
            Question(title: "How old are you?", answers: 0),
            Question(title: "Your weight?", answers: 0),
            Question(title: "Your height?", answers: 0),
        ]
    }
}

