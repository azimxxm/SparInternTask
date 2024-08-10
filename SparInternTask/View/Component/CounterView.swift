//
//  CounterView.swift
//  SparInternTask
//
//  Created by Azimjon Abdurasulov on 10/08/24.
//

import SwiftUI

struct CounterView: View {
    @State var selected: Int = 0
    var body: some View {
        VStack(spacing: 10) {
            Picker("What is your favorite color?", selection: $selected) {
                           Text("Шт").tag(0)
                           Text("Кг").tag(1)
                       }
                       .pickerStyle(.segmented)
                       .frame(height: 40)
            HStack {
                Image(systemName: "minus")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18, height: 18)
                    .foregroundStyle(.white)
                    .bold()
                
                VStack {
                    Text("0.1 кг")
                        .fontSize(size: 16,weight: .bold)
                    Text("~5,92 ₽")
                        .fontSize(size: 16,weight: .regular)
                }
                .frame(maxWidth: .infinity)
                .foregroundStyle(.white)
                
                Image(systemName: "plus")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18, height: 18)
                    .foregroundStyle(.white)
                    .bold()
                    
            }
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
            .background(Color.main)
        .clipShape(Capsule())
        }
    }
}

#Preview {
    CounterView()
}
