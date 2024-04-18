//
//  CalculateViewModel.swift
//  Calculator
//
//  Created by 조성빈 on 4/18/24.
//

import Foundation

class CalculateViewModel: ObservableObject {
    @Published var buttonData: [[String]] = [
        ["AC", "plus.forwardslash.minus", "percent", "divide"],
        ["7", "8", "9", "multiply"],
        ["4", "5", "6", "minus"],
        ["1", "2", "3", "plus"],
        ["0", ".", "equal"]
    ]
    
    var answer: String = ""
    
    func acAction() -> String {
        return "0"
    }
    
    func plusMinusAction(resultNumber numStr: String) -> String {
        answer = numStr
        if numStr.first == "-" {
            answer = String(answer.removeFirst())
        }else {
            answer = "-" + answer
        }
        
        return answer
    }
    
    func percentAction(resultNumber numStr: String) -> String {
        
        
        return answer
    }
    
}
