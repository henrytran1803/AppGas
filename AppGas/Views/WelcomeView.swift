//
//  Welcome.swift
//  AppGas
//
//  Created by Tran Viet Anh on 12/02/2024.
//

import SwiftUI

struct WelcomeView: View {
    
    @State private var animateGradient: Bool = false
    @State private var isShowingRegistration = false
    private let startColor: Color = .blue
    private let endColor: Color = .green
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "sun.min")
                .font(.system(size: 72, weight: .light))
                .padding(.top, 80)
                .padding(.bottom, 64)
            
            Text("Chào mừng đến với chúng tôi")
                .font(.title)
                .bold()
            
            Text("Nhanh chóng tiện lợi.")
                .fontWeight(.thin)
            
            Spacer()
            Button(action: {
                isShowingRegistration = true
            }) {
                Label("", systemImage: "arrow.right")
            }
            .font(.largeTitle)
            .frame(width: 50, height: 50)
            .background(Color.white)
            .cornerRadius(25)
            .padding(10)
            .overlay(
                Circle()
                    .stroke(style: StrokeStyle(lineWidth: 1))
                    .foregroundColor(.white)
            )

            Spacer()
        }
        .frame(maxWidth: .infinity)
        .foregroundColor(.black)
        .padding(.horizontal)
        .fullScreenCover(isPresented: $isShowingRegistration) {
            LoginView()
        }
        .multilineTextAlignment(.center)
        .background {
            LinearGradient(colors: [startColor, endColor], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
                .hueRotation(.degrees(animateGradient ? 45 : 0))
                .onAppear {
                    withAnimation(.easeInOut(duration: 3).repeatForever(autoreverses: true)) {
                        animateGradient.toggle()
                    }
                }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
