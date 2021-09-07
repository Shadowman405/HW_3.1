//
//  ColorCircle.swift
//  HW_3.1
//
//  Created by Maxim Mitin on 7.09.21.
//

import SwiftUI

struct ColorCircle: View {
    let color : Color
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 125, height: 125)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red)
    }
}
