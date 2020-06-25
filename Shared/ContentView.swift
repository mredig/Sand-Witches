//
//  ContentView.swift
//  Shared
//
//  Created by Michael Redig on 6/24/20.
//

import SwiftUI

struct ContentView: View {
	var sandwiches: [Sandwich] = []

	var body: some View {
		NavigationView {
			List {
				ForEach(sandwiches) { sandwich in
					SandwichCell(sandwich: sandwich)
				}

				HStack {
					Spacer()
					Text("\(sandwiches.count) Sandwiches")
						.italic()
						.font(.callout)
						.foregroundColor(.secondary)
					Spacer()
				}

			}
			.navigationTitle("Sandwiches")
		}
	}
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		ContentView(sandwiches: testData)
    }
}

struct SandwichCell: View {
	let sandwich: Sandwich

	var body: some View {
		NavigationLink(destination: Text(sandwich.name)) {
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
