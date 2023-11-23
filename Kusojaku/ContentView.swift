//
//  ContentView.swift
//  Kusojaku
//
//  Created by uhooi on 2023/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var models: [KusoCardModel] = [
        .init(id: 0, color: .red, isFliped: false),
        .init(id: 1, color: .green, isFliped: false),
        .init(id: 2, color: .blue, isFliped: false),
        .init(id: 3, color: .purple, isFliped: false),
        .init(id: 4, color: .red, isFliped: false),
        .init(id: 5, color: .green, isFliped: false),
        .init(id: 6, color: .blue, isFliped: false),
        .init(id: 7, color: .purple, isFliped: false),
        .init(id: 8, color: .red, isFliped: false),
        .init(id: 9, color: .green, isFliped: false),
        .init(id: 10, color: .blue, isFliped: false),
        .init(id: 11, color: .purple, isFliped: false),
        .init(id: 12, color: .red, isFliped: false),
        .init(id: 13, color: .green, isFliped: false),
        .init(id: 14, color: .blue, isFliped: false),
        .init(id: 15, color: .purple, isFliped: false),
    ]
    @State private var isStart = true
    
    var body: some View {
        VStack(spacing: 16) {
            HStack(spacing: 16) {
                ForEach(0..<4) { index in
                    KusoCardView(
                        color: models[index].color,
                        isFliped: models[index].isFliped
                    ) {
                        action(id: models[index].id)
                    }
                    .id(models[index].id)
                }
            }
            HStack(spacing: 16) {
                ForEach(4..<8) { index in
                    KusoCardView(
                        color: models[index].color,
                        isFliped: models[index].isFliped
                    ) {
                        action(id: models[index].id)
                    }
                    .id(models[index].id)
                }
            }
            HStack(spacing: 16) {
                ForEach(8..<12) { index in
                    KusoCardView(
                        color: models[index].color,
                        isFliped: models[index].isFliped
                    ) {
                        action(id: models[index].id)
                    }
                    .id(models[index].id)
                }
            }
            HStack(spacing: 16) {
                ForEach(12..<16) { index in
                    KusoCardView(
                        color: models[index].color,
                        isFliped: models[index].isFliped
                    ) {
                        action(id: models[index].id)
                    }
                    .id(models[index].id)
                }
            }
        }
        .frame(maxHeight: .infinity, alignment: .center)
        .overlay(alignment: .bottom) {
            Button(isStart ? "START" : "END") {
                models.forEach { $0.isFliped = isStart }
                isStart.toggle()
            }
            .buttonStyle(.borderedProminent)
            .tint(.brown)
        }
    }
}

// MARK: - Privates

private extension ContentView {
    func action(id: Int) {
        models[id].isFliped.toggle()
    }
}

// MARK: - Previews

#Preview {
    ContentView()
}
