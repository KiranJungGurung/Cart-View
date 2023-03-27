//
//  Items.swift
//  Cart-View
//
//  Created by Kiran Gurung on 27/03/2023.
//

import SwiftUI

struct Item: Identifiable {
    var id = UUID().uuidString
    var name: String
    var image: String
    var price: Float
    var quantity: Int
    var offset: CGFloat
    var isSwiped: Bool
}
