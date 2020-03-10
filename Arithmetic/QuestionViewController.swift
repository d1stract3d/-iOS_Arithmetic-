//
//  QuestionViewController.swift
//  Arithmetic
//
//  Created by Alex McCall on 3/10/20.
//  Copyright © 2020 Alex McCall. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    var operand1: Int!
    var operand2: Int!
    var oper: String = "+"
    var answer: Int!
    let range = 1...20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelAnswer.text=" "
        displayQuestion()
    }
    
    @IBOutlet weak var labelQuestion: UILabel!
    @IBOutlet weak var labelAnswer: UILabel!
    @IBOutlet weak var buttonShowAnswer: UIButton!
    
    @IBAction func buttonAnswerTapped(_ sender: UIButton) {
        buttonShowAnswer.isEnabled = false
               switch oper{
               case "+":
                   answer = operand1 + operand2
               case "-":
                   answer = operand1 - operand2
               case "*":
                   answer = operand1 * operand2
               default:
                   break
               }
               labelAnswer.text="\(answer!)"
    }
    @IBAction func buttonNextTapped(_ sender: UIButton) {
        labelAnswer.text=" "
               displayQuestion()
    }
     func displayQuestion(){
            operand1 = Int.random(in: range)
            operand2 = Int.random(in: range)
    //        let index = Int.random(in: 0..<mathOperations.count)
    //        oper = mathOperations[index].mathOperator
            labelQuestion.text = "\(operand1!)\(oper)\(operand2!)"
            buttonShowAnswer.isEnabled = true
        }
}
