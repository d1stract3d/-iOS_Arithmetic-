//
//  MathOperations.swift
//  Arithmetic
//
//  Created by Alex McCall on 3/10/20.
//  Copyright © 2020 Alex McCall. All rights reserved.
//

import Foundation

struct MathOperation {
    var name: String
    var mathOperator: String
    
    static func loadOperator() -> [MathOperation]{
        let plus = MathOperation(name: "Addition", mathOperator: "+")
         let minus = MathOperation(name: "Subtraction", mathOperator: "-")
         let times = MathOperation(name: "Multiplication", mathOperator: "*")
        return [plus, minus, times]
    }
}
