//
//  KusoCardView.swift
//  Kusojaku
//
//  Created by uhooi on 2023/11/23.
//

import SwiftUI

struct KusoCardView: View {
    let color: Color
//    let isFliped: Bool
    @State var isFliped: Bool
    let action: () -> Void
    
    var body: some View {
        Button {
//            action()
            isFliped.toggle()
        } label: {
            Text("💩")
                .font(.system(size: 48))
                .opacity(isFliped ? 0 : 1)
                .overlay {
                    color.opacity(isFliped ? 0 : 0.2)
                        .clipShape(RoundedRectangle(cornerRadius: 4))
                }
                .padding(8)
                .background(isFliped ? .brown : .white)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .shadow(radius: 4, y: 2)
                .rotation3DEffect(Angle(degrees: degrees), axis: (x: 0, y: 1, z: 0))
        }
    }
    
    init(color: Color, isFliped: Bool, action: @escaping () -> Void) {
        self.color = color
        self.isFliped = isFliped
        self.action = action
    }
}

// MARK: - Privates

private extension KusoCardView {
    var degrees: Double { isFliped ? 180 : 0 }
}
