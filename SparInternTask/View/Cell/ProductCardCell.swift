//
//  ProductCardCell.swift
//  SparInternTask
//
//  Created by Azimjon Abdurasulov on 10/08/24.
//

import SwiftUI

struct ProductCardCell: View {
    let item: ProductDM
    var body: some View {
        VStack {
            Image(item.imageName)
                .resizable()
                .scaledToFill()
                .frame(minWidth: UIScreen.main.bounds.width/2 - 32, maxWidth: UIScreen.main.bounds.width/2 - 32, minHeight: 168, maxHeight: 168)
                .padding(.bottom, 32)
                .overlay(alignment: .bottomLeading) {
                    RatingView(rating: item.rating)
                }
                .overlay(alignment: .topTrailing) {
                    FavoritesInfoCard()
                }
                .overlay(alignment: .bottomTrailing) {
                    if item.showPromo {
                        Text("25%")
                            .foregroundStyle(Color.promo)
                            .fontSize(size: 16, weight: .bold)
                    }
                }
            Text(item.name)
                .fontSize(size: 16)
                .foregroundStyle(Color.textGray)
                .frame(maxWidth: .infinity, alignment: .leading)

            Spacer()
            if !item.showPCounter {
                CounterView()
            } else {
                PriceCardView(item: item)
            }
            
        }
        .frame(minHeight: 340, maxHeight: 340)
        .padding(EdgeInsets(top: 16, leading: 16, bottom: 4, trailing: 16))
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
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(radius: 2)
    }
}

#Preview {
    ZStack {
        Color.white
        HStack(spacing: 16) {
            ProductCardCell(
                item: ProductDM(
                    name: "AA",
                    imageName: "food_1",
                    rating: 4.1,
                    price: 990,
                    promoPrice: 1999,
                    isFaforites: false, 
                    showPromo: false
                )
            )
            ProductCardCell(
                item: ProductDM(
                    name: "AA",
                    imageName: "food_1",
                    rating: 4.1,
                    price: 990,
                    promoPrice: 1999,
                    isFaforites: false, 
                    showPromo: true
                )
            )
        }
        .padding()
    }
}
