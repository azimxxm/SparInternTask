//
//  ProductDM.swift
//  SparInternTask
//
//  Created by Azimjon Abdurasulov on 10/08/24.
//

import Foundation

struct ProductDM: Identifiable {
    let id = UUID().uuidString
    let name, imageName: String
    let rating: Double
    let price, promoPrice: Int
    var isFaforites: Bool
    var showPromo: Bool
    var showPCounter: Bool = false
}

func MocData()-> [ProductDM] {
    var data: [ProductDM] = []
    for i in 1...10 {
        data.append(
            ProductDM(
                name: "Food\(i)",
                imageName: "food_\(i)",
                rating: 4.1,
                price: 99000,
                promoPrice: 199,
                isFaforites: false,
                showPromo: i == 1 || i == 4 || i == 10,
                showPCounter: i == 4 || i == 8
            )
        )
    }
    return data
}
