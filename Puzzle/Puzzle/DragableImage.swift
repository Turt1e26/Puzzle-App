//
//  DragableImage.swift
//  Puzzle
//
//  Created by Bodie Woods on 2/28/23.
//

import SwiftUI

struct DragableImage: View {
    private let imageSize: CGFloat = 100
    @State var offset = CGSize.zero
    @State var imageName = "1"
    var dragGesture: some Gesture{
        DragGesture()
            .onChanged{ value in
                offset = CGSize(width: value.startLocation.x + value.translation.width - imageSize/2, height: value.startLocation.y + value.translation.height - imageSize/2)
            }
    }
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: imageSize, height: imageSize)
                .foregroundColor(.accentColor)
                .offset(offset)
                .gesture(dragGesture)
            
            
        }
    }
}

struct DragableImage_Previews: PreviewProvider {
    static var previews: some View {
        DragableImage()
    }
}
