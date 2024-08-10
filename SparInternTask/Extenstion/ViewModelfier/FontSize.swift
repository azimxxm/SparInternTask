//
//  FontSize.swift
//  SparInternTask
//
//  Created by Azimjon Abdurasulov on 10/08/24.
//

import SwiftUI


extension View {
    func fontSize(size: CGFloat, weight: Font.Weight = .regular)-> some View {
        self.modifier(SystemFontSize(size: size, weight: weight))
    }
}


struct SystemFontSize: ViewModifier {
    
    var size: CGFloat
    var weight: Font.Weight
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: size, weight: weight))
    }
    
}
