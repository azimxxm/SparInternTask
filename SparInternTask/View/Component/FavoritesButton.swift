//
//  FavoritesButton.swift
//  SparInternTask
//
//  Created by Azimjon Abdurasulov on 10/08/24.
//

import SwiftUI

struct FavoritesButton: View {
    @State private var isSelected: Bool = false
    var body: some View {
        Image(systemName: isSelected ? "heart.fill" : "heart")
            .resizable()
            .scaledToFit()
            .bold()
            .foregroundStyle(isSelected ? Color.main : .gray)
            .frame(width: 18, height: 18)
            .clipped()
            .asButton(.press, action: { isSelected.toggle() })
    }
}

#Preview {
    FavoritesButton()
}
