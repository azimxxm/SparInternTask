//
//  FavoritesInfoCard.swift
//  SparInternTask
//
//  Created by Azimjon Abdurasulov on 10/08/24.
//

import SwiftUI

struct FavoritesInfoCard: View {
    var body: some View {
        VStack(spacing: 24) {
            Image(.leter)
                .resizable()
                .scaledToFit()
                .frame(width: 18, height: 18)
                .clipped()
                .asButton(.press, action: {})
            
            FavoritesButton()
        }
        .padding()
        .background(.white.opacity(0.8))
        .clipShape(Capsule())
    }
}

#Preview {
    ZStack {
        Color.gray.ignoresSafeArea()
        FavoritesInfoCard()
    }
}
