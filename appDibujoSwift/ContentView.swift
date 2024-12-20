//
//  ContentView.swift
//  appDibujoSwift
//
//  Created by Guest User on 06/12/24.
//

import SwiftUI

struct ContentView: View {
    // Variable que controla la posición de la pupila
    @State private var moveEyes = false
    
    var body: some View {
        VStack {
            // Dibujo de los ojos
            ZStack {
                // Ojo izquierdo
                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.white)
                    .overlay(Circle().stroke(Color.black, lineWidth: 2))
                    .position(x: 120, y: 200)
                
                // Ojo derecho
                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.white)
                    .overlay(Circle().stroke(Color.black, lineWidth: 2))
                    .position(x: 280, y: 200)
                
                // Pupila izquierda (se mueve)
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.black)
                    .offset(x: moveEyes ? 30 : -30, y: 0)
                    .position(x: 120, y: 200)
                    .animation(Animation.linear(duration: 1).repeatForever(autoreverses: true), value: moveEyes)
                
                // Pupila derecha (se mueve)
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.black)
                    .offset(x: moveEyes ? 30 : -30, y: 0)
                    .position(x: 280, y: 200)
                    .animation(Animation.linear(duration: 1).repeatForever(autoreverses: true), value: moveEyes)
            }
            .padding()
        }
        .onAppear {
            // Iniciar la animación automáticamente
            moveEyes = true
        }
    }
}
