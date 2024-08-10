//
//  ProductListView.swift
//  SparInternTask
//
//  Created by Azimjon Abdurasulov on 11/08/24.
//

import SwiftUI

struct ProductListView: View {
    let data: [ProductDM] = MocData()
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack(alignment: .leading, spacing: 16) {
                ForEach(data) { item in
                    ProductListCardCell(item: item)
                }
            }
        }
    }
}

#Preview {
    ProductListView()
}
