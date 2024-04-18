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
    
}
