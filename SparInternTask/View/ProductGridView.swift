//
//  ProductGridView.swift
//  SparInternTask
//
//  Created by Azimjon Abdurasulov on 10/08/24.
//

import SwiftUI

struct ProductGridView: View {
    let data: [ProductDM] = MocData()
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: Array(repeating: GridItem(spacing: 16), count: 2), spacing: 16, content: {
                ForEach(data) { item in
                    ProductCardCell(item: item)
                }
            })
        }
    }
}

#Preview {
    ProductGridView()
}
