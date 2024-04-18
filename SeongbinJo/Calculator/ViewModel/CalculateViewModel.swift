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
    
    @Published var signCalculate: String = ""
    
    var answer: String = ""
    
    func acAction() -> String {
        return "0"
    }
    
    func zeroAction(resultNumber numStr: String, inputNumber inputStr: String) -> String {
        if numStr == "0" {
            return inputStr
        }else {
            return numStr + inputStr
        }
    }
    
    func plusMinusAction(resultNumber numStr: String) -> String {
        answer = numStr
        if numStr.first == "-" {
            answer = String(answer.dropFirst())
            print(numStr)
            print(answer)
        }else {
            answer = "-" + answer
        }
        
        return answer
    }
    
    func percentAction(resultNumber numStr: String) -> String {
        let number = (Double(numStr) ?? 0.0)/100.0
        
        return String(number)
    }
    
    func basicOperationAction(resultNumber numStr: String, inputNumber inputStr: String) -> String {
        switch inputStr {
        case "plus":
            return numStr + "+"
        case "minus":
            return numStr + "-"
        case "multiply":
            return numStr + "*"
        case "divide":
            return numStr + "/"
        default:
            return numStr + inputStr
        }
    }
    
    func basicCalculate(resultNumber numStr: String) -> String {
        let basicSign: [Character] = ["+", "-", "*", "/"]
        if numStr.contains(where: { basicSign.contains($0) }) {
            guard let result = NSExpression(format: numStr).expressionValue(with: nil, context: nil) as? Double else { return "Error" }
            answer = String(result)
            print(result)
        }else {
            return numStr
        }
        
        return answer
    }
    
}
