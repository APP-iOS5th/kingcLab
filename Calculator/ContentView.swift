//
//  ContentView.swift
//  Calculator
//
//  Created by 육현서 on 4/18/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.cyan.opacity(0.2).ignoresSafeArea()
        }
        VStack {
            
            HStack {
                Button{
                    
                } label: {
                    Text("C")
                        .frame(width: 80,
                        height: 80)
                        .background(.gray.opacity(0.4))
                        .cornerRadius(40)
                        .font(.system(size: 30))
                        .fontDesign(.rounded)
                        .bold()
                        .padding(3)
                        
                }
                
                
                Button{
                    
                } label: {
                    Text("/")
                        .frame(width: 80,
                        height: 80)
                        .background(.gray.opacity(0.4))
                        .cornerRadius(40)
                        .font(.system(size: 30))
                        .fontDesign(.rounded)
                        .bold()
                        .padding(3)
                }
                
                Button{
                    
                } label: {
                    Text("%")
                        .frame(width: 80,
                        height: 80)
                        .background(.gray.opacity(0.4))
                        .cornerRadius(40)
                        .font(.system(size: 30))
                        .fontDesign(.rounded)
                        .bold()
                        .padding(3)
                }
                
                Button{
                    
                } label: {
                    Text("÷")
                        .frame(width: 80,
                        height: 80)
                        .background(.cyan.opacity(0.4))
                        .cornerRadius(40)
                        .font(.system(size: 30))
                        .fontDesign(.rounded)
                        .bold()
                        .padding(3)
                }
            }.padding(5)
            
            HStack {
                Button{
                    
                } label: {
                    Text("7")
                        .frame(width: 80,
                               height: 80)
                        .background(.gray.opacity(0.4))
                        .cornerRadius(40)
                        .font(.system(size: 30))
                        .fontDesign(.rounded)
                        .bold()
                        .padding(3)
                }
                
                
                    Button{
                        
                    } label: {
                        Text("8")
                            .frame(width: 80,
                                   height: 80)
                            .background(.gray.opacity(0.4))
                            .cornerRadius(40)
                            .font(.system(size: 30))
                            .fontDesign(.rounded)
                            .bold()
                            .padding(3)
                    }
                
                Button{
                    
                } label: {
                    Text("9")
                        .frame(width: 80,
                               height: 80)
                        .background(.gray.opacity(0.4))
                        .cornerRadius(40)
                        .font(.system(size: 30))
                        .fontDesign(.rounded)
                        .bold()
                        .padding(3)
                }
                
                Button{
                    
                } label: {
                    Text("x")
                        .frame(width: 80,
                               height: 80)
                        .background(.cyan.opacity(0.4))
                        .cornerRadius(40)
                        .font(.system(size: 30))
                        .fontDesign(.rounded)
                        .bold()
                        .padding(3)
                }
            }.padding(5)
            
            HStack {
                Button{
                    
                } label: {
                    Text("4")
                        .frame(width: 80,
                               height: 80)
                        .background(.gray.opacity(0.4))
                        .cornerRadius(40)
                        .font(.system(size: 30))
                        .fontDesign(.rounded)
                        .bold()
                        .padding(3)
                }
                
                Button{
                    
                } label: {
                    Text("5")
                        .frame(width: 80,
                               height: 80)
                        .background(.gray.opacity(0.4))
                        .cornerRadius(40)
                        .font(.system(size: 30))
                        .fontDesign(.rounded)
                        .bold()
                        .padding(3)
                }
                
                Button{
                    
                } label: {
                    Text("6")
                        .frame(width: 80,
                               height: 80)
                        .background(.gray.opacity(0.4))
                        .cornerRadius(40)
                        .font(.system(size: 30))
                        .fontDesign(.rounded)
                        .bold()
                        .padding(3)
                }
                
                Button{
                    
                } label: {
                    Text("-")
                        .frame(width: 80,
                               height: 80)
                        .background(.cyan.opacity(0.4))
                        .cornerRadius(40)
                        .font(.system(size: 30))
                        .fontDesign(.rounded)
                        .bold()
                        .padding(3)
                }
            }.padding(5)
            
            HStack {
                Button{
                    
                } label: {
                    Text("1")
                        .frame(width: 80,
                               height: 80)
                        .background(.gray.opacity(0.4))
                        .cornerRadius(40)
                        .font(.system(size: 30))
                        .fontDesign(.rounded)
                        .bold()
                        .padding(3)
                }
                
                Button{
                    
                } label: {
                    Text("2")
                        .frame(width: 80,
                               height: 80)
                        .background(.gray.opacity(0.4))
                        .cornerRadius(40)
                        .font(.system(size: 30))
                        .fontDesign(.rounded)
                        .bold()
                        .padding(3)
                }
                
                Button{
                    
                } label: {
                    Text("3")
                        .frame(width: 80,
                               height: 80)
                        .background(.gray.opacity(0.4))
                        .cornerRadius(40)
                        .font(.system(size: 30))
                        .fontDesign(.rounded)
                        .bold()
                        .padding(3)
                }
                
                Button{
                    
                } label: {
                    Text("+")
                        .frame(width: 80,
                               height: 80)
                        .background(.cyan.opacity(0.4))
                        .cornerRadius(40)
                        .font(.system(size: 30))
                        .fontDesign(.rounded)
                        .bold()
                        .padding(3)
                }
            }.padding(5)
            
            HStack {
                Button{
                    
                } label: {
                    Text("0")
                        .frame(width: 180,
                               height: 80)
                        .background(.gray.opacity(0.4))
                        .cornerRadius(40)
                        .font(.system(size: 30))
                        .fontDesign(.rounded)
                        .bold()
                        .padding(3)
                }
                
                Button{
                    
                } label: {
                    Text(".")
                        .frame(width: 80,
                               height: 80)
                        .background(.gray.opacity(0.4))
                        .cornerRadius(40)
                        .font(.system(size: 30))
                        .fontDesign(.rounded)
                        .bold()
                        .padding(3)
                }
                
                Button{
                    
                } label: {
                    Text("=")
                        .frame(width: 80,
                               height: 80)
                        .background(.pink.opacity(0.4))
                        .cornerRadius(40)
                        .font(.system(size: 30))
                        .fontDesign(.rounded)
                        .bold()
                        .padding(3)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
