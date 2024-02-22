//
//  Registration.swift
//  AppGas
//
//  Created by Tran Viet Anh on 12/02/2024.
//

import SwiftUI
struct RegistrationView: View {
    @State private var userName = ""
    @State private var passWord = ""
    @State private var repeatPassWord = ""
    @State private var isShowingRegistration = false

    var body: some View {
        NavigationView{
            VStack(alignment: .center) {
                Image(systemName: "plus.circle")
                    .font(Font.system(.largeTitle))
                    Spacer()
                HStack {
                    Text("User name")
                    Spacer()
                }
                .padding(.leading)
                TextField("Username", text: $userName)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                    .padding(.horizontal)
                    .font(.system(size: 14))
                
                HStack {
                    Text("Password")
                    Spacer()
                }
                .padding(.leading)
                SecureField("Password", text: $passWord)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                    .padding(.horizontal)
                    .font(.system(size: 14))
                
                HStack {
                    Text("Repeat Password")
                    Spacer()
                }
                .padding(.leading)
                SecureField("Password", text: $repeatPassWord)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                    .padding(.horizontal)
                    .font(.system(size: 14))
                Spacer()
                Button("Register") {
                    // Add registration logic here
                }
                .padding()
                .frame(width: 200 , height: 50, alignment: .center)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                
                HStack {
                    Text("Đã có tài khoản?")
                        .font(.system(size: 14))
                        .padding(.top, 8)

                    Button(action: {
                        isShowingRegistration = true
                    }) {
                        Text("Đăng nhập")
                            .font(.system(size: 14))
                            .foregroundColor(.blue)
                            .padding(.top, 8)
                    }
                }
            }
            .padding()
            .fullScreenCover(isPresented: $isShowingRegistration) {
                LoginView()
            }
            
            .padding()
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}

