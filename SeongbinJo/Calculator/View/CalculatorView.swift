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
                        .font(.system(size: geometry.size.width * 0.2))
                    VStack(spacing: geometry.size.width * 0.04) {
                        ForEach(calculateVM.buttonData, id: \.self) { line in
                            HStack(spacing: geometry.size.width * 0.04) {
                                ForEach(line, id: \.self) { data in
                                    ButtonView(buttonColor: data == line.last ? Color.orange : Color.gray, buttonWidth: data != "0" ? geometry.size.width * 0.19 : geometry.size.width * 0.41, buttonHeight: geometry.size.width * 0.19, buttonTitle: data, textSize: geometry.size.width * 0.08, textColor: Color.black, resultNumber: $resultNumber)
                                }
                            }
                        }
                    }
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
