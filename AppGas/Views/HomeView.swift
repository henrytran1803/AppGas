//
//  Home.swift
//  AppGas
//
//  Created by Tran Viet Anh on 12/02/2024.
//

import SwiftUI
struct HomeView: View {
    @State private var tabSelected: Tab = .house

    init() {
        UITabBar.appearance().isHidden = true
    }

    var body: some View {
        ZStack {
            VStack {
                switch tabSelected {
                case .house:
                    ProductView()
                case .message:
                    NotifierView()
                case .person:
                    ProfileView()
                case .leaf:
                    // Add your LeafView here
                    Text("Leaf View")
                case .gearshape:
                    // Add your GearShapeView here
                    SettingView()
                }

                Spacer()
            }
            .padding(.bottom, 60) // Adjust bottom padding to make space for the custom tab bar
            
            VStack {
                Spacer()
                CustomTabBar(selectedTab: $tabSelected)
            }
        }
        .overlay(
            TabView(selection: $tabSelected) {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Text(tab.rawValue.capitalized)
                        .tag(tab)
                }
            }
            .hidden()
        )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
