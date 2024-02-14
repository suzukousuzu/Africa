//
//  CoverImageView.swift
//  Africa
//
//  Created by 鈴木航太 on 2024/02/14.
//

import SwiftUI

struct CoverImageView: View {
    
    var body: some View {
        let coverImges: [CoverImage] = Bundle.main.decode("covers.json")
        TabView {
            ForEach(coverImges) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 480, height: 300))
    }
}
