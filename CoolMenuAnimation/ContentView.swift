//
//  ContentView.swift
//  CoolMenuAnimation
//
//  Created by Kaori Persson on 2022-12-18.
//

import SwiftUI

struct ContentView: View {
  @State var isRotating = false
  @State var isHidden = false
  
  var body: some View {
    VStack {
      Rectangle()
        .frame(width: 64, height: 10)
        .cornerRadius(4)
        .rotationEffect(isRotating ? Angle(degrees: 34) : Angle(degrees: 0), anchor: .leading)

      Rectangle()
        .frame(width: 64, height: 10)
        .cornerRadius(4)
        .scaleEffect(x: isHidden ? 0 : 1,
                     y: isHidden ? 0 : 1,
                     anchor: .leading)
        .opacity(isHidden ? 0 : 1)
      
      Rectangle()
        .frame(width: 64, height: 10)
        .cornerRadius(4)
        .rotationEffect(isRotating ? Angle(degrees: -34) : Angle(degrees: 0), anchor: .leading)
    }
    .padding()
    .onTapGesture {
      // animation bounses because of .interpolatingSpring(stiffness: 300, damping: 15)
      withAnimation(.interpolatingSpring(stiffness: 300, damping: 15)) {
        isRotating.toggle()
        isHidden.toggle()
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
