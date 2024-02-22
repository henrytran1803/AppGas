//
//  SettingView.swift
//  AppGas
//
//  Created by Tran Viet Anh on 17/02/2024.
//

import SwiftUI

struct SettingView: View {
    func toggleLED() {
        // Địa chỉ IP của ESP8266
        guard let url = URL(string: "http://192.168.1.6/led-on") else {
            print("Invalid URL")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                print("Error:", error ?? "Unknown error")
                return
            }
            
            if let responseString = String(data: data, encoding: .utf8) {
                print("Response:", responseString)
            }
        }.resume()
    }
    func toggleLEDOFF() {
        // Địa chỉ IP của ESP8266
        guard let url = URL(string: "http://192.168.1.6/led-off") else {
            print("Invalid URL")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                print("Error:", error ?? "Unknown error")
                return
            }
            
            if let responseString = String(data: data, encoding: .utf8) {
                print("Response:", responseString)
            }
        }.resume()
    }
    func moveServo(angle: Int) {
        // Địa chỉ IP của ESP8266
        guard let url = URL(string: "http://192.168.1.6/servo-move?angle=\(angle)") else {
            print("Invalid URL")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                print("Error:", error ?? "Unknown error")
                return
            }
            
            if let responseString = String(data: data, encoding: .utf8) {
                print("Response:", responseString)
            }
        }.resume()
    }
    
    var body: some View {
        VStack{
            Button("Toggle LED") {
                toggleLED()
            }
            .buttonStyle(PressEffectButtonStyle(backgroundColor: Color.blue))
            Button("Toggle LED") {
                toggleLEDOFF()
            }
            .buttonStyle(PressEffectButtonStyle(backgroundColor: Color.red))
            Button("Rotate Servo to 0 degrees") {
                moveServo(angle: 0)
            }
            .buttonStyle(PressEffectButtonStyle(backgroundColor: Color.green))
            
            Button("Rotate Servo to 90 degrees") {
                moveServo(angle: 90)
            }
            .buttonStyle(PressEffectButtonStyle(backgroundColor: Color.yellow))
            
            Button("Rotate Servo to 180 degrees") {
                moveServo(angle: 180)
            }
            .buttonStyle(PressEffectButtonStyle(backgroundColor: Color.red))
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
