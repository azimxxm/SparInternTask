//
//  CustomDivider.swift
//  SparInternTask
//
//  Created by Azimjon Abdurasulov on 10/08/24.
//

import SwiftUI

struct CustomDivider: View {
    var height: CGFloat? = 1
    var opacity: CGFloat = 0.1
    var body: some View {
        Rectangle()
            .fill(.black.opacity(opacity))
            .frame(height: height)
    }
}

