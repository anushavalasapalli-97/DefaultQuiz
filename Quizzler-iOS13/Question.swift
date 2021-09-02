//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Kalyanam Bhargava Ram on 9/2/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var question: String
    var answer: String
    
    init(q:String,a:String) {
        question = q
        answer = a
    }
}
