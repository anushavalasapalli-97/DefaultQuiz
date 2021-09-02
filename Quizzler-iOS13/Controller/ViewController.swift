//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btnTrue: UIButton!
    @IBOutlet weak var lblQuestion: UILabel!
    @IBOutlet weak var lblScore: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var btnFalse: UIButton!
    
    var quizBrain = QuizQuestionsBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
        
        
        
    }


    @IBAction func btnAnswerClicked(_ sender: UIButton)  {
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
       
        
        Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
        quizBrain.nextQuestion()
    }
    
    @objc func updateUI() {
        lblQuestion.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        btnTrue.backgroundColor = UIColor.clear
        btnFalse.backgroundColor = UIColor.clear
        lblScore.text = "Score:  \(quizBrain.getScore())" 
    }
}

