//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Vinícius Dalla Vechia on 01/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
          LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]),
                         startPoint: UnitPoint.topLeading,
                         endPoint: UnitPoint.bottomTrailing)
            .edgesIgnoringSafeArea(Edge.Set.all)
          VStack {
            Text("Cupertino, CA")
              .font(.system(size: 32,
                            weight: Font.Weight.medium,
                            design: Font.Design.default))
              .foregroundColor(Color.white)
              .padding()
            
            VStack(spacing: 10) {
              Image(systemName: "cloud.sun.fill")
                .renderingMode(Image.TemplateRenderingMode.original)
                .resizable()
                .aspectRatio(contentMode: ContentMode.fit)
                .frame(width: 180, height: 180)
              
              Text("76°")
                .font(Font.system(size: 70, weight: Font.Weight.medium))
                .foregroundColor(Color.white)
            }
            Spacer()
          }
        }
    }
}

#Preview {
    ContentView()
}
