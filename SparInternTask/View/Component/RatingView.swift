//
//  RatingView.swift
//  SparInternTask
//
//  Created by Azimjon Abdurasulov on 10/08/24.
//

import SwiftUI

struct RatingView: View {
    var rating: Double
    var body: some View {
        HStack {
            Image(.star)
                .resizable()
                .scaledToFit()
                .frame(width: 18, height: 18)
            Text(String(rating))
                .fontSize(size: 14)
                .foregroundStyle(Color.textGray)
        }
    }
}

#Preview {
    RatingView(rating: 4.1)
}
