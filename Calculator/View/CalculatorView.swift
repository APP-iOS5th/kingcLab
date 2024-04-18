////
////  CalculatorView.swift
////  Calculator
////
////  Created by 조성빈 on 4/18/24.
////
//
//import SwiftUI
//
//struct CalculatorView: View {
//    
//    @StateObject var calculateVM: CalculateViewModel
//    
//    @State var resultNumber: String = "0"
//    
//    var body: some View {
//        GeometryReader { geometry in
//            ZStack {
//                Color.black.edgesIgnoringSafeArea(.all)
//                VStack(alignment: .trailing, spacing: 10) {
//                    Spacer()
//                    Spacer()
//                    Spacer()
//                    Text(resultNumber)
//                        .foregroundColor(.white)
//                        .font(.system(size: geometry.size.width * 0.14))
//                        .background(.yellow)
//                    VStack {
//                        HStack(spacing: geometry.size.width * 0.04) {
//                            ButtonView(buttonColor: .gray, buttonWidth: geometry.size.width * 0.19, buttonHeight: geometry.size.width * 0.19, buttonTitle: "C", textSize: geometry.size.width * 0.08, textColor: .black)
//                            ButtonView(buttonColor: .gray, buttonWidth: geometry.size.width * 0.19, buttonHeight: geometry.size.width * 0.19, buttonTitle: "plus.forwardslash.minus", textSize: geometry.size.width * 0.08, textColor: .black)
//                            ButtonView(buttonColor: .gray, buttonWidth: geometry.size.width * 0.19, buttonHeight: geometry.size.width * 0.19, buttonTitle: "percent", textSize: geometry.size.width * 0.08, textColor: .black)
//                            ButtonView(buttonColor: .gray, buttonWidth: geometry.size.width * 0.19, buttonHeight: geometry.size.width * 0.19, buttonTitle: "divide", textSize: geometry.size.width * 0.08, textColor: .black)
//                        }
//                        HStack(spacing: geometry.size.width * 0.04) {
//                            ButtonView(buttonColor: .gray, buttonWidth: geometry.size.width * 0.19, buttonHeight: geometry.size.width * 0.19, buttonTitle: "1", textSize: geometry.size.width * 0.08, textColor: .black)
//                            ButtonView(buttonColor: .gray, buttonWidth: geometry.size.width * 0.19, buttonHeight: geometry.size.width * 0.19, buttonTitle: "2", textSize: geometry.size.width * 0.08, textColor: .black)
//                            ButtonView(buttonColor: .gray, buttonWidth: geometry.size.width * 0.19, buttonHeight: geometry.size.width * 0.19, buttonTitle: "3", textSize: geometry.size.width * 0.08, textColor: .black)
//                            ButtonView(buttonColor: .gray, buttonWidth: geometry.size.width * 0.19, buttonHeight: geometry.size.width * 0.19, buttonTitle: "multiply", textSize: geometry.size.width * 0.08, textColor: .black)
//                        }
//                        HStack(spacing: geometry.size.width * 0.04) {
//                            ButtonView(buttonColor: .gray, buttonWidth: geometry.size.width * 0.19, buttonHeight: geometry.size.width * 0.19, buttonTitle: "4", textSize: geometry.size.width * 0.08, textColor: .black)
//                            ButtonView(buttonColor: .gray, buttonWidth: geometry.size.width * 0.19, buttonHeight: geometry.size.width * 0.19, buttonTitle: "5", textSize: geometry.size.width * 0.08, textColor: .black)
//                            ButtonView(buttonColor: .gray, buttonWidth: geometry.size.width * 0.19, buttonHeight: geometry.size.width * 0.19, buttonTitle: "6", textSize: geometry.size.width * 0.08, textColor: .black)
//                            ButtonView(buttonColor: .gray, buttonWidth: geometry.size.width * 0.19, buttonHeight: geometry.size.width * 0.19, buttonTitle: "minus", textSize: geometry.size.width * 0.08, textColor: .black)
//                        }
//                        HStack(spacing: geometry.size.width * 0.04) {
//                            ButtonView(buttonColor: .gray, buttonWidth: geometry.size.width * 0.19, buttonHeight: geometry.size.width * 0.19, buttonTitle: "7", textSize: geometry.size.width * 0.08, textColor: .black)
//                            ButtonView(buttonColor: .gray, buttonWidth: geometry.size.width * 0.19, buttonHeight: geometry.size.width * 0.19, buttonTitle: "8", textSize: geometry.size.width * 0.08, textColor: .black)
//                            ButtonView(buttonColor: .gray, buttonWidth: geometry.size.width * 0.19, buttonHeight: geometry.size.width * 0.19, buttonTitle: "9", textSize: geometry.size.width * 0.08, textColor: .black)
//                            ButtonView(buttonColor: .gray, buttonWidth: geometry.size.width * 0.19, buttonHeight: geometry.size.width * 0.19, buttonTitle: "plus", textSize: geometry.size.width * 0.08, textColor: .black)
//                        }
//                        HStack(spacing: geometry.size.width * 0.04) {
//                            ButtonView(buttonColor: .gray, buttonWidth: geometry.size.width * 0.422, buttonHeight: geometry.size.width * 0.19, buttonTitle: "0", textSize: geometry.size.width * 0.08, textColor: .black)
//                            ButtonView(buttonColor: .gray, buttonWidth: geometry.size.width * 0.19, buttonHeight: geometry.size.width * 0.19, buttonTitle: ".", textSize: geometry.size.width * 0.08, textColor: .black)
//                            ButtonView(buttonColor: .gray, buttonWidth: geometry.size.width * 0.19, buttonHeight: geometry.size.width * 0.19, buttonTitle: "equal", textSize: geometry.size.width * 0.08, textColor: .black)
//                        }
//                    }
//                    .background(.green)
//                    Spacer()
//                }
//            }
//        }
//        .environmentObject(calculateVM)
//    }
//}
//
//#Preview {
//    CalculatorView(calculateVM: CalculateViewModel())
//}

//
//  CalculatorView.swift
//  Calculator
//
//  Created by 조성빈 on 4/18/24.
//

import SwiftUI

struct CalculatorView: View {
    
    @StateObject var calculateVM: CalculateViewModel
    
    @State var resultNumber: String = "0"
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
                VStack(alignment: .trailing, spacing: 10) {
                    Spacer()
                    Spacer()
                    Spacer()
                    Text(resultNumber)
                        .foregroundColor(.white)
                        .font(.system(size: geometry.size.width * 0.14))
                        .background(.yellow)
                    VStack {
                        ForEach(calculateVM.buttonData, id: \.self) { line in
                            HStack {
                                ForEach(line, id: \.self) { data in
                                    if data != "0" {
                                        ButtonView(buttonColor: Color.gray, buttonWidth: geometry.size.width * 0.19, buttonHeight: geometry.size.width * 0.19, buttonTitle: data, textSize: geometry.size.width * 0.08, textColor: Color.black)
                                    }else {
                                        ButtonView(buttonColor: Color.gray, buttonWidth: geometry.size.width * 0.422, buttonHeight: geometry.size.width * 0.19, buttonTitle: data, textSize: geometry.size.width * 0.08, textColor: Color.black)
                                    }
                                        
                                }
                            }
                        }
                    }
                    .background(.green)
                    Spacer()
                }
            }
        }
        .environmentObject(calculateVM)
    }
}

#Preview {
    CalculatorView(calculateVM: CalculateViewModel())
}
