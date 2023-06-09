//
//  CartView.swift
//  Cart-View
//
//  Created by Kiran Gurung on 27/03/2023.
//

import SwiftUI

struct CartView: View {
    @StateObject var cartData = CartViewModel()
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                Button(action: {}) {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 26, weight: .heavy))
                        .foregroundColor(.black)
                }
                
                Text("My cart")
                    .font(.title)
                    .fontWeight(.heavy)
                  
                
                Spacer()
                
            }
            .padding()
            
            Text("Welcome, Kiran!")
                .font(.title2)
                .foregroundColor(.black)
            
            
            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack(spacing: 0) {
                    ForEach(cartData.items){ item in
                        // ItemView
                        ItemView(item: $cartData.items[getIndex(item: item)], items: $cartData.items)
                    }
                }
            }
            
            // Bottom View
            VStack {
                HStack {
                    Text("Total Summary")
                        .fontWeight(.heavy)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    // Calculating Total Price
                    Text(calculateTotalPrice())
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                }
                .padding([.top, .horizontal])
                
                Button(action: {}) {
                    Text("CONTINUE PAYMENT")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 30)
                        .background(
                            LinearGradient(gradient: .init(colors: [Color("lightblue"), Color("blue")]), startPoint: .leading, endPoint: .trailing)
                        )
                        .cornerRadius(17)
                }
            }
        }
        .background(Color("gray").ignoresSafeArea())
        
    }
    
    func getIndex(item: Item) -> Int {
        return cartData.items.firstIndex { (item1) -> Bool in
            return item.id == item1.id
        } ?? 0
    }
    
    func calculateTotalPrice() -> String {
        var price: Float = 0
        
        cartData.items.forEach { (item) in
            price += Float(item.quantity) * item.price
        }
        
        return getPrice(value: price)
    }
    
}

