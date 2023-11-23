//
//  KusoCardModel.swift
//  Kusojaku
//
//  Created by uhooi on 2023/11/23.
//

import Combine
import Foundation
import SwiftUI

final class KusoCardModel: ObservableObject, Identifiable {
//struct KusoCardModel: Identifiable {
    let id: Int
    let color: Color
    @Published var isFliped: Bool
//    @State var isFliped: Bool
    
    init(id: Int, color: Color, isFliped: Bool) {
        self.id = id
        self.color = color
        self.isFliped = isFliped
    }
}
