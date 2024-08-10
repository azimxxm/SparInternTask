//
//  PriceCardView.swift
//  SparInternTask
//
//  Created by Azimjon Abdurasulov on 10/08/24.
//

import SwiftUI

struct PriceCardView: View {
    let item: ProductDM
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                HStack(spacing: 10) {
                    Text(String(item.price))
                    Text("RUB/KG")
                        
                }
                .fontSize(size: 14, weight: .bold)
                .foregroundStyle(Color.text)
                
                Text(String(item.promoPrice))
                    .fontSize(size: 14)
                    .foregroundStyle(Color.textGray)
                    .strikethrough()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(.trash)
                .resizable()
                .scaledToFit()
                .frame(width: 58, height: 46)
                .clipped()
        }
    }
}

#Preview {
    PriceCardView(item: ProductDM(
        name: "AA",
        imageName: "food_1",
        rating: 4.1,
        price: 990,
        promoPrice: 1999,
        isFaforites: false,
        showPromo: true
    ))
}
