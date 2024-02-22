//
//  ProfileView.swift
//  AppGas
//
//  Created by Tran Viet Anh on 12/02/2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack{
                    Text("hello")
                    CircleImage(image: Image("rainbowlake"))
                    
                }
                Divider()
                Label("Thông tin", systemImage: "brain.head.profile.fill")
                    .padding(.leading)
                Divider()
                Label("Label", systemImage: /*@START_MENU_TOKEN@*/"42.circle"/*@END_MENU_TOKEN@*/)
                Divider()
                Label(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/, systemImage: /*@START_MENU_TOKEN@*/"42.circle"/*@END_MENU_TOKEN@*/)
                Divider()
                Label("Label", systemImage: /*@START_MENU_TOKEN@*/"42.circle"/*@END_MENU_TOKEN@*/)
                Divider()
                Label("Lịch sử", systemImage: "folder")
                Divider()
                Label("Phản hồi", systemImage: "headphones")
                Divider()
                Button("Đăng xuất") {
                    // Thực hiện các hành động liên quan đến việc đăng xuất ở đây
                }
                .buttonStyle(PressEffectButtonStyle(backgroundColor: Color.red))
//                .padding()
//                .frame(width: 350, height: 30)
//                .foregroundColor(.white)
//                .background(Color.red)
//                .cornerRadius(8)
//                .overlay(
//                    RoundedRectangle(cornerRadius: 8)
//                        .stroke(Color.black, lineWidth: 1)
//                )
            }
        }
    }
}

struct PressEffectButtonStyle: ButtonStyle {
    var backgroundColor: Color // Thêm thuộc tính màu đây
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(backgroundColor) // Sử dụng màu từ thuộc tính backgroundColor
            .foregroundColor(.white)
            .cornerRadius(10)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
            .opacity(configuration.isPressed ? 0.6 : 1.0)
            .animation(.easeInOut, value: configuration.isPressed)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
