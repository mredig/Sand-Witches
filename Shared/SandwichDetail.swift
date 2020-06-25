//
//  SandwichDetail.swift
//  Sand Witches
//
//  Created by Michael Redig on 6/24/20.
//

import SwiftUI

struct SandwichDetail: View {
	let sandwich: Sandwich

    var body: some View {
		Image(sandwich.imageName)
			.resizable()
			.aspectRatio(contentMode: .fit)
    }
}

struct SandwichDetail_Previews: PreviewProvider {
    static var previews: some View {
        SandwichDetail(sandwich: testData[1])
    }
}
