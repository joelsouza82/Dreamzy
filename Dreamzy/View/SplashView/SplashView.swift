//
//  SplashView.swift
//  Dreamzy
//
//  Created by Joel de Almeida Souza on 25/02/23.
//

import SwiftUI

struct SplashView: View {
    @State var isActive : Bool = false
    @State private var size = 0.7
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack {
                    Image("splash")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 128, height: 128)
                        .cornerRadius(20)
                    
                    Text("Dreamzy")
                        .font(Font.custom("Baskerville-Bold", size: 26))
                        .foregroundColor(.black.opacity(0.80))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.00
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
