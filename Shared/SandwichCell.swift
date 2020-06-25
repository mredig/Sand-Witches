//
//  SandwichCell.swift
//  Sand Witches
//
//  Created by Michael Redig on 6/25/20.
//

import SwiftUI

struct SandwichCell: View {
	let sandwich: Sandwich

	var body: some View {
		NavigationLink(destination: SandwichDetail(sandwich: sandwich)) {
			Image(sandwich.thumbnailName)
				.resizable()
				.frame(width: 44.0, height: 44.0)
				.cornerRadius(8)

			VStack(alignment: .leading) {
				Text(sandwich.name)
				Text("\(sandwich.ingredientCount) ingredients")
					.font(.subheadline)
					.foregroundColor(.secondary)
			}
		}
	}
}
