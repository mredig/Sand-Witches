//
//  SandwichStore.swift
//  Sand Witches
//
//  Created by Michael Redig on 6/25/20.
//

import Foundation

class SandwichStore: ObservableObject {
	@Published var sandwiches: [Sandwich]

	init(sandwiches: [Sandwich] = []) {
		self.sandwiches = sandwiches
	}
}

let testStore = SandwichStore(sandwiches: testData)
