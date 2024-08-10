//
//  CornerRadiusViewModefier.swift
//  SparInternTask
//
//  Created by Azimjon Abdurasulov on 10/08/24.
//

import SwiftUI

extension View {
    func cornerRadiusWithShape(_ radius: CGFloat, style: RoundedCornerStyle) -> some View {
        self.modifier(CornerRadiusModifier(radius: radius, style: style))
    }
}

struct CornerRadiusModifier: ViewModifier {
    var radius: CGFloat
    var style: RoundedCornerStyle = .continuous
    
    func body(content: Content) -> some View {
        content
            .clipShape(RoundedRectangle(cornerRadius: radius, style: style))
    }
}


/// An extension to apply corner radius to specific corners of a view.
extension View {
    /// Applies a corner radius to specific corners of the view.
    ///
    /// - Parameters:
    ///   - radius: The radius of the corners.
    ///   - corners: The corners to which the radius should be applied.
    /// - Returns: A view with rounded corners applied.
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

/// A custom shape to define rounded corners.
struct RoundedCorner: Shape {
    /// The radius of the corners.
    var radius: CGFloat = .infinity
    /// The corners to which the radius should be applied.
    var corners: UIRectCorner = .allCorners
    
    /// Returns a path describing the outline of the shape.
    ///
    /// - Parameter rect: The bounding rectangle of the shape.
    /// - Returns: A path describing the outline of the shape.
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
