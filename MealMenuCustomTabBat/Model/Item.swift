//
//  Item.swift
//  MealMenuCustomTabBat
//
//  Created by Maxim Macari on 13/11/20.
//

import SwiftUI

struct Item: Identifiable {
    var id = UUID().uuidString
    var name: String
    var price: String
    var image: String
}

var items = [
    Item(name: "Salad", price: "6.5 €", image: "salad"),
    Item(name: "Soup", price: " 7.5 €", image: "soup"),
    Item(name: "Sandwich", price: "6 €", image: "sandwich"),
    Item(name: "Pancakes", price: "6.5 €", image: "pancakes"),
    Item(name: "Mashed potatoes", price: "7.90 €", image: "mashed-potatoes"),
    Item(name: "Bacon & eggs", price: "7.50 €", image: "bacon-eggs")
]
