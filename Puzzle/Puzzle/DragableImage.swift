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
    var endLocation: CGPoint
    var dragGesture: some Gesture{
        DragGesture()
            .onChanged{ value in
                var x = value.startLocation.x + value.translation.width - imageSize/2
                var y = value.startLocation.y + value.translation.height - imageSize/2
                
                
                if abs(x - endLocation.x) < 40 && abs(y - endLocation.y) < 40{
                    x = endLocation.x
                    y = endLocation.y
                }
                
                offset = CGSize(width:x, height:y)
                    
            }
    }
    init (imageName: String, endLocation: CGPoint){
        self.offset = CGSize(width: Int.random(in: -200...200), height: Int.random(in: -200...200))
        self.imageName = imageName
        self.endLocation = endLocation
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

//struct DragableImage_Previews: PreviewProvider {
//    static var previews: some View {
//        DragableImage()
//    }
//}
