//
//  FAQData.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2021-02-19.
//  Copyright © 2021 Matt Dolan External macOS. All rights reserved.
//

import Foundation

struct FAQ {
    let question: String
    let answer: String
    
    init(question: String, answer: String) {
        self.question = question
        self.answer = answer
    }
}
