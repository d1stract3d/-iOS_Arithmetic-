//
//  ViewController.swift
//  Arithmetic
//
//  Created by Alex McCall on 3/10/20.
//  Copyright © 2020 Alex McCall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var mathOperations:[MathOperation] = []
       
    
    override func viewDidLoad() {
         mathOperations = MathOperation.loadOperator()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MathSegue"{
            let operation = (sender as! UIButton).currentTitle
            let qVC = segue.destination as! QuestionViewController
            let index = mathOperations.firstIndex(where: {$0.name == operation})!
            qVC.oper = mathOperations[index].mathOperator
        }
    }

}

