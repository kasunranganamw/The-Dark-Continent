//
//  CoverImageView.swift
//  The Dark Continent
//
//  Created by Kasun Rangana M W on 22/01/2024.
//

import SwiftUI

struct CoverImageView: View {
    
    // MARK: - PROPERTIES
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }//: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    CoverImageView()
}
