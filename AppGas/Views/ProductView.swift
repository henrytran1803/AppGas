//
//  ProductView.swift
//  AppGas
//
//  Created by Tran Viet Anh on 12/02/2024.
//

import SwiftUI

struct ProductView: View {
    @State private var searchText = ""

    var body: some View {
            NavigationStack {
                Text("Best")
                    .font(.custom("PlayfairDisplay-Bold", size: 24))
                    .padding(.horizontal)
                    
                ScrollView (.horizontal, showsIndicators: false) {
                    HStack (spacing: 0) {
                        ForEach(0 ..< 4) { i in
                            ProductCardView(image: Image(systemName: "cart"), size: 180)
                        }
                        .padding(.leading)
                    }
                }
                
            }
            .searchable(text: $searchText, prompt: "Tìm kiếm")
    }
}
struct ProductCardView: View {
    let image: Image
    let size: CGFloat
    var body: some View {
        VStack {
            image
                .resizable()
                .frame(width: size, height: 200 * (size/210))
                .cornerRadius(20.0)
            Text("Luxury Swedian chair").font(.title3).fontWeight(.bold)
            
            HStack (spacing: 2) {
                ForEach(0 ..< 5) { item in
                    Image("star")
                }
                Spacer()
                Text("$1299")
                    .font(.title3)
                    .fontWeight(.bold)
            }
        }
        .frame(width: size)
        .padding()
        .background(Color.gray)
        .cornerRadius(20.0)
        
    }
}
struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
    }
}
