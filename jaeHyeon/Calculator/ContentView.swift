//
//  ContentView.swift
//  Calculator
//
//  Created by 임재현 on 4/18/24.
//

import SwiftUI

enum ButtonColor: String {
    case gray = "Gray"
    case orange = "Orange"
    
    var color: Color {
        switch self {
        case .gray:
            return .gray
        case .orange:
            return .orange
        }
    }
}

enum CalculatorOperation: String {
    case add = "+"
    case subtract = "-"
    case multiply = "x"
    case divide = "/"
    case none
}

struct ContentView: View {
    @State private var value = "0"
    @State private var runningNumber: Double? = nil
    @State private var currentOperation: CalculatorOperation = .none
    @State private var userIsInTheMiddleOfTyping = false

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack(spacing: 12) {
                Spacer()
                HStack {
                    Spacer()
                    Text(value)
                        .font(.system(size: 53))
                        .foregroundColor(.white)
                        .padding()
                }
                ForEach(buttons, id: \.self) { row in
                    HStack(spacing: 12) {
                        ForEach(row, id: \.self) { button in
                            CalculatorButton(label: button.label, color: button.color, width: button.width) {
                                self.buttonTapped(button.label)
                            }
                        }
                    }
                }
            }
        }
    }

    let buttons: [[CalculatorButtonLabel]] = [
        [.init(label: "AC", color: .gray, width: 80), .init(label: "±", color: .gray, width: 80), .init(label: "%", color: .gray, width: 80), .init(label: "/", color: .orange, width: 80)],
        [.init(label: "7", color: .gray, width: 80), .init(label: "8", color: .gray, width: 80), .init(label: "9", color: .gray, width: 80), .init(label: "x", color: .orange, width: 80)],
        [.init(label: "4", color: .gray, width: 80), .init(label: "5", color: .gray, width: 80), .init(label: "6", color: .gray, width: 80), .init(label: "-", color: .orange, width: 80)],
        [.init(label: "1", color: .gray, width: 80), .init(label: "2", color: .gray, width: 80), .init(label: "3", color: .gray, width: 80), .init(label: "+", color: .orange, width: 80)],
        [.init(label: "0", color: .gray, width: 160), .init(label: ".", color: .gray, width: 80), .init(label: "=", color: .orange, width: 80)]
    ]
    
    func buttonTapped(_ label: String) {
        switch label {
        case "AC":
            value = "0"
            runningNumber = nil
            currentOperation = .none
            userIsInTheMiddleOfTyping = false
        case "±":
            if let num = Double(value) {
                value = formatValue(num * -1)
            }
        case "%":
            if let num = Double(value) {
                value = formatValue(num / 100)
            }
        case "x", "-", "+", "/":
            if let num = Double(value) {
                if currentOperation != .none && userIsInTheMiddleOfTyping {
                    calculate()
                }
                runningNumber = num
                userIsInTheMiddleOfTyping = false
            }
            currentOperation = CalculatorOperation(rawValue: label) ?? .none
        case "=":
            if userIsInTheMiddleOfTyping {
                calculate()
                userIsInTheMiddleOfTyping = false
            }
        default:
            if userIsInTheMiddleOfTyping {
                value += label
            } else {
                value = label
                userIsInTheMiddleOfTyping = true
            }
        }
    }
    
    func calculate() {
        if let num = Double(value), let runningNum = runningNumber {
            switch currentOperation {
            case .add:
                runningNumber = runningNum + num
            case .subtract:
                runningNumber = runningNum - num
            case .multiply:
                runningNumber = runningNum * num
            case .divide:
                runningNumber = num != 0 ? runningNum / num : Double.infinity
            default:
                break
            }
            value = formatValue(runningNumber!)
            currentOperation = .none
        }
    }
    
    func formatValue(_ num: Double) -> String {
        if floor(num) == num {
            return "\(Int(num))"
        } else {
            return "\(num)"
        }
    }
}

struct CalculatorButton: View {
    let label: String
    let color: ButtonColor
    let width: CGFloat
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(label)
                .frame(width: width, height: 80)
                .background(color.color)
                .clipShape(RoundedRectangle(cornerRadius: 40))
                .foregroundColor(.white)
                .font(.system(size: 33))
        }
    }
}

struct CalculatorButtonLabel: Hashable {
    let label: String
    let color: ButtonColor
    let width: CGFloat
}

#Preview {
    ContentView()
}
