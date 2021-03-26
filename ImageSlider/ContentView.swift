//
//  ContentView.swift
//  ImageSlider
//
//  Created by Kevin Baldha on 18/03/21.
//

import SwiftUI

struct ContentView: View {
    @State var index = 0

    var images = ["1", "2", "3", "1"]

    var body: some View {
        VStack(spacing: 20) {
            PagingView(index: $index.animation(), maxIndex: images.count - 1) {
                ForEach(self.images, id: \.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                }
            }
            .aspectRatio(4/3, contentMode: .fit)
            .clipShape(RoundedRectangle(cornerRadius: 15))
        }
        .padding()
    }
}
