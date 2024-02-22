//
//  Login.swift
//  AppGas
//
//  Created by Tran Viet Anh on 12/02/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var userName = ""
    @State private var passWord = ""
    @State private var trigger = 0
    @State private var isShowingRegistration = false
    @State private var isShowingHome = false
    var body: some View {
        NavigationView {
            
            VStack {
                Image(systemName: "person.and.background.striped.horizontal")
                    .font(Font.system(.largeTitle))
                    Spacer()
                Text("Tên đăng nhập")
                    .padding(.leading)
                TextField("Username", text: $userName)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                    .padding(.horizontal)
                    .font(.system(size: 14))
                    .multilineTextAlignment(.leading)
                
                Text("Mật khẩu")
                SecureField("Password", text: $passWord)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                    .padding(.horizontal)
                    .font(.system(size: 14))
                    .multilineTextAlignment(.leading)
                Spacer()
                Button("Đăng nhập") {
                    isShowingHome = true
                }
                .buttonStyle(PressEffectButtonStyle(backgroundColor: Color.blue))
//                .padding()
//                .frame(width: 200, height: 50)
//                .background(Color.gray.opacity(0.1))
//                .foregroundColor(.black)
//                .cornerRadius(8)
//                .overlay(
//                    RoundedRectangle(cornerRadius: 8)
//                        .stroke(Color.black, lineWidth: 1)
//                )
                
                HStack {
                    Text("Chưa có tài khoản?")
                        .font(.system(size: 14))
                        .padding(.top, 8)

                    Button(action: {
                        isShowingRegistration = true
                    }) {
                        Text("Tạo tài khoản")
                            .font(.system(size: 14))
                            .foregroundColor(.blue)
                            .padding(.top, 8)
                    }
                    
                }
            }
            .padding()
            .fullScreenCover(isPresented: $isShowingRegistration) {
                RegistrationView()
            }
            .fullScreenCover(isPresented: $isShowingHome) {
                HomeView()
            
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
