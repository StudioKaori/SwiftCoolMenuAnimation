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
      
      Rectangle()
        .frame(width: 64, height: 10)
        .cornerRadius(4)
      
      Rectangle()
        .frame(width: 64, height: 10)
        .cornerRadius(4)
    }
    .padding()
    .onTapGesture {
      withAnimation {
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
