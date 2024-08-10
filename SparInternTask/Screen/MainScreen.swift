//
//  MainScreen.swift
//  SparInternTask
//
//  Created by Azimjon Abdurasulov on 10/08/24.
//

import SwiftUI

struct MainScreen: View {
    @State private var viewState: StateEnum = .grid
    var body: some View {
        NavigationView(content: {
            VStack {
                VStack(alignment: .leading, spacing: 10) {
                    Image(.chips)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 48, height: 48)
                        .clipped()
                        .padding(.leading)
                        .asButton(.press, action: {
                            if viewState == .grid {
                                viewState = .list
                            } else {
                                viewState = .grid
                            }
                        })
                    CustomDivider(height: 2)
                }
                someView
            }
        })
        .navigationBarBackButtonHidden()
    }
    
    @ViewBuilder
    private var someView: some View {
        switch viewState {
        case .grid:
            ProductGridView()
        case .list:
            ProductListView()
        }
    }
}

#Preview {
    MainScreen()
}
