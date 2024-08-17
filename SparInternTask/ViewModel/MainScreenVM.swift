//
//  MainScreenVM.swift
//  SparInternTask
//
//  Created by Azimjon Abdurasulov on 11/08/24.
//

import SwiftUI

class MainScreenVM: ObservableObject {
    @Published var data: [ProductDM] = MocData()
    @Published var viewState: StateEnum = .grid

    func toggleViewState() {
        if viewState == .grid {
            viewState = .list
        } else {
            viewState = .grid
        }
    }
}
