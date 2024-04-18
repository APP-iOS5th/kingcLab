//
//  ButtonView.swift
//  Calculator
//
//  Created by 조성빈 on 4/18/24.
//

import SwiftUI

struct ButtonView: View {
    
    @EnvironmentObject var calculateVM: CalculateViewModel
    
    let buttonColor: Color
    let buttonWidth: CGFloat
    let buttonHeight: CGFloat
    let buttonTitle: String
    
    let textSize: CGFloat
    let textColor: Color
    
    @Binding var resultNumber: String
    
    var signOperation: String = ""
    
    var body: some View {
        Button(action: {
            print("\(buttonTitle) Clicked!")
            switch buttonTitle {
            case "0":
                resultNumber = calculateVM.zeroAction(resultNumber: resultNumber, inputNumber: buttonTitle)
            case "AC":
                resultNumber = calculateVM.acAction()
            case "plus.forwardslash.minus":
                resultNumber = calculateVM.plusMinusAction(resultNumber: resultNumber)
            case "percent":
                resultNumber = calculateVM.percentAction(resultNumber: resultNumber)
            case "plus", "minus", "divide", "multiply":
                resultNumber = calculateVM.basicOperationAction(resultNumber: resultNumber, inputNumber: buttonTitle)
            case "equal":
                resultNumber = calculateVM.basicCalculate(resultNumber: resultNumber)
            default:
                resultNumber = calculateVM.zeroAction(resultNumber: resultNumber, inputNumber: buttonTitle)
            }
        }) {
            Rectangle()
                .frame(width: buttonWidth, height: buttonHeight)
                .cornerRadius(100)
                .foregroundColor(buttonColor)
                .overlay {
                    HStack {
                        if buttonTitle.count > 3 {
                            Image(systemName: buttonTitle)
                                .font(.system(size: textSize))
                                .foregroundColor(textColor)
                        }else {
                            Text(buttonTitle)
                                .font(.system(size: textSize))
                                .foregroundColor(textColor)
                        }
                    }
                }
        }
    }
}

#Preview {
    ButtonView(buttonColor: Color.gray, buttonWidth: 70, buttonHeight: 70, buttonTitle: "0", textSize: 30, textColor: Color.white, resultNumber: .constant("0"))
}
