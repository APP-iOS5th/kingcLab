//
//  ButtonView.swift
//  Calculator
//
//  Created by 조성빈 on 4/18/24.
//

import SwiftUI

struct ButtonView: View {
    
    let buttonColor: Color
    let buttonWidth: CGFloat
    let buttonHeight: CGFloat
    let buttonTitle: String
    
    let textSize: CGFloat
    let textColor: Color
   
    @Binding var resultNumber: String
    
    var body: some View {
            Button(action: {
                print("\(buttonTitle) Clicked!")
                switch buttonTitle {
                case "0":
                    if resultNumber == "0" {
                        resultNumber = buttonTitle
                    }else {
                        resultNumber += buttonTitle
                    }
                case "AC":
                    resultNumber = "0"
                case "plus.forwardslash.minus":
                    if resultNumber.first == "-" {
                        resultNumber.removeFirst()
                    }else {
                        resultNumber = "-" + resultNumber
                    }
                default:
                    if resultNumber == "0" {
                        resultNumber = buttonTitle
                    }else {
                        resultNumber += buttonTitle
                    }
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
