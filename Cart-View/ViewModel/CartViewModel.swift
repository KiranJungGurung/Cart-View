//
//  CartViewModel.swift
//  Cart-View
//
//  Created by Kiran Gurung on 27/03/2023.
//

import SwiftUI

class CartViewModel: ObservableObject {
    
    // cart Items...
    
    @Published var items = [
        
        Item(name: "Thakali Mutton Thukpa", image: "p1", price: 4.51, quantity: 1, offset: 0, isSwiped: false),
        
        Item(name: "Mixed Veg.Pizza",  image: "p2", price: 6.32, quantity: 2, offset: 0, isSwiped: false),
        
        Item(name: "Jimbu Thakali Thali(Mutton)", image: "p3", price: 5.38, quantity: 1, offset: 0, isSwiped: false),
        
        Item(name: "Dhido Thali (Mutton)",  image: "p4", price: 5.83, quantity: 1, offset: 0, isSwiped: false),
        
        Item(name: "Egg Cury", image: "p5", price: 1.74, quantity: 1, offset: 0, isSwiped: false),
        
        Item(name: "Chicken Momo", image: "p6", price: 2.58, quantity: 1, offset: 0, isSwiped: false),

        Item(name: "Jhol Mutton Momo", image: "p7", price: 4.51, quantity: 1, offset: 0, isSwiped: false),

        Item(name: "Mutton Sukuti", image: "p8", price: 6.02, quantity: 1, offset: 0, isSwiped: false),

        Item(name: "Aloo Jimbu Sukuti", image: "p9", price: 7.39, quantity: 1, offset: 0, isSwiped: false),

        Item(name: "Mutton Sekuwa", image: "p10", price:6.63, quantity: 1, offset: 0, isSwiped: false),
        
        Item(name: "Mushroom Choila", image: "p11", price: 3.22, quantity: 1, offset: 0, isSwiped: false),
        
        Item(name: "Chicken Lasagna", image: "p12", price: 4.58, quantity: 1, offset: 0, isSwiped: false),

        
    ]
    
}
