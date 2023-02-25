//
//  ContentView.swift
//  Dreamzy
//
//  Created by Joel de Almeida Souza on 25/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Welcome to your lucid dream journal! Here you can record your dream experiences in a simple and fun way. Use texts, audio or images to capture the most important details of your dream and start exploring the fascinating world of lucid dreaming. We hope this app helps you improve your dreaming skills and that you have a lot of fun!")
                .padding()
                .foregroundColor(Color.blue)
            Button(action: {
                print("cliked")
            }) {
                HStack {
                    Image(systemName: "sparkles")
                        .font(.title)
                    Text("Start")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(25)
            }.padding(10)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
