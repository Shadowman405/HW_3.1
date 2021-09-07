//
//  ContentView.swift
//  HW_3.1
//
//  Created by Maxim Mitin on 7.09.21.
//

import SwiftUI

struct ContentView: View {
    @State private var activeLight : trafficLights = .red
    @State private var btnText = "START"
    @State private var opactityRed = 0.3
    @State private var opactityYellow = 0.3
    @State private var opactityGreen = 0.3
    
    enum trafficLights{
        case red,yellow,green
    }
    
    var body: some View {
        ZStack{
        Color.black
            .ignoresSafeArea()
        VStack{
            ColorCircle(color: .red).opacity(opactityRed)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
            ColorCircle(color: .yellow).opacity(opactityYellow)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
            ColorCircle(color: .green)
                .opacity(opactityGreen).overlay(Circle().stroke(Color.white, lineWidth: 4))
            Spacer()
            
            Button(action: {colorSwitch()}, label: {
                Text("\(btnText)")
                    .font(.custom("Systems", size: 30))
                    .fontWeight(.bold)
            })
            .foregroundColor(.white)
            .frame(width: 170, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(Color.blue)
            .cornerRadius(15)
            .overlay(RoundedRectangle(cornerRadius: 15
            ).stroke(Color.white, lineWidth: 3))
        }
    }
    }
    
    private func colorSwitch() {
        if btnText == "START" {
            btnText = "NEXT"
        }
        
        switch activeLight {
        case .red:
            opactityRed = 1.0
            opactityYellow = 0.3
            opactityGreen = 0.3
            activeLight = .yellow
        case .yellow:
            opactityRed = 0.3
            opactityYellow = 1.0
            opactityGreen = 0.3
            activeLight = .green
        case .green:
            opactityRed = 0.3
            opactityYellow = 0.3
            opactityGreen = 1.0
            activeLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
