//
//  ProductListCardCell.swift
//  SparInternTask
//
//  Created by Azimjon Abdurasulov on 10/08/24.
//

import SwiftUI

struct ProductListCardCell: View {
    let item: ProductDM
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(item.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: UIScreen.main.bounds.width/2 - 32, maxWidth: UIScreen.main.bounds.width/2 - 32, minHeight: 168, maxHeight: 168)
                    .padding(.bottom, 32)
                    .overlay(alignment: .bottomTrailing) {
                        if item.showPromo {
                            Text("25%")
                                .foregroundStyle(Color.promo)
                                .fontSize(size: 16, weight: .bold)
                        }
                    }
                    .overlay(alignment: .topLeading, content: {
                        if item.showPromo {
                            Text("Удар по ценам")
                                .fontSize(size: 12)
                                .padding(8)
                                .background(Color.promo)
                                .cornerRadius(24, corners: [.bottomRight, .topRight, .topLeft])
                                .padding(1)
                        }
                    })
                VStack(alignment: .leading) {
                    HStack {
                        VStack(alignment: .leading) {
                            HStack {
                                RatingView(rating: item.rating)
                                Text("| 19 отзывов")
                                    .fontSize(size: 16)
                                    .foregroundStyle(Color.textGray)
                            }
                            Text("Огурцы тепличные cадово-огородные")
                                .fontSize(size: 16)
                                .foregroundStyle(Color.textGray)
                        }
                        FavoritesInfoCard()
                    }
                    if item.showPCounter {
                        CounterView()
                    } else {
                        PriceCardView(item: item)
                    }
                }
            }
            CustomDivider(height: 2)
        }
    }
}

#Preview {
    ProductListCardCell(item: ProductDM(
        name: "AA",
        imageName: "food_1",
        rating: 4.1,
        price: 990,
        promoPrice: 1999,
        isFaforites: false,
        showPromo: true
    ))
}
