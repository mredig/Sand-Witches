//
//  Sandwich.swift
//  Sand Witches
//
//  Created by Michael Redig on 6/24/20.
//

import Foundation

struct Sandwich: Identifiable {
	var id = UUID()
	var name: String
	var ingredientCount: Int
	var isSpicy: Bool = false

	var imageName: String { name }
	var thumbnailName: String { name + " Thumb" }
}

let testData = [
	Sandwich(name: "Club", ingredientCount: 4),
	Sandwich(name: "Pastrami on rye", ingredientCount: 4, isSpicy: true),
	Sandwich(name: "French dip", ingredientCount: 3),
	Sandwich(name: "Banh mi", ingredientCount: 5, isSpicy: true),
	Sandwich(name: "Ice cream sandwich", ingredientCount: 2),
	Sandwich(name: "Croque madame", ingredientCount: 4),
	Sandwich(name: "Hot dog", ingredientCount: 2, isSpicy: true),
	Sandwich(name: "Fluffernutter", ingredientCount: 2),
	Sandwich(name: "Avocado toast", ingredientCount: 3, isSpicy: true),
	Sandwich(name: "Gua bao", ingredientCount: 4, isSpicy: true),
]
