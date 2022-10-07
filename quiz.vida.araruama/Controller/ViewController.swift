//
//  ViewController.swift
//  quiz.vida.araruama
//
//  Created by Vinicius Pinheiro de Oliveira on 03/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet weak var restartButton: UIButton!
    
    @IBAction func restartButton(_ sender: UIButton) {
        
        updateUI()
        
    }
    
    var quizBrain = QuizBrain()
 
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle! //True, False
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
    
       
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        
 
    }
    
    @objc func updateUI(){
        if quizBrain.questionNumber > 10{
            progressBar.progress = 0.0
            scoreLabel.text = "Placar: \(quizBrain.getscore())"
            questionLabel.text = "Placar total: \(quizBrain.getscore())! Isso quer dizer que você não conhece bem a vida de ninguem que você ama. MELHORE!"
            trueButton.isHidden = true
            falseButton.isHidden = true
            trueButton.backgroundColor = UIColor.clear
            falseButton.backgroundColor = UIColor.clear
            restartButton.isHidden = false
            
            
            
            
        } else {
            
            progressBar.progress = quizBrain.getProgress()
            questionLabel.text = quizBrain.getQuestionText()
            scoreLabel.text = "Placar: \(quizBrain.getscore())"
            trueButton.backgroundColor = UIColor.clear
            falseButton.backgroundColor = UIColor.clear
            restartButton.isHidden = true
            trueButton.isHidden = false
            falseButton.isHidden = false
            restartButton.backgroundColor = UIColor.clear
            
        }
       
        
        
    }
    
    
    
}
