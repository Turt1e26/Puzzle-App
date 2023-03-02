//
//  ContentView.swift
//  Puzzle
//
//  Created by Bodie Woods on 2/28/23.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack{
          
            
            ZStack{
                DragableImage(imageName: "1")
                    .offset(x:CGFloat(Int.random(in: -150..<150)), y:CGFloat(Int.random(in: -200..<200)))
                DragableImage(imageName: "2")
                    .offset(x:CGFloat(Int.random(in: -150..<150)), y:CGFloat(Int.random(in: -200..<200)))
                DragableImage(imageName: "3")
                    .offset(x:CGFloat(Int.random(in: -150..<150)), y:CGFloat(Int.random(in: -200..<200)))
                DragableImage(imageName: "4")
                    .offset(x:CGFloat(Int.random(in: -150..<150)), y:CGFloat(Int.random(in: -200..<200)))
                DragableImage(imageName: "5")
                    .offset(x:CGFloat(Int.random(in: -150..<150)), y:CGFloat(Int.random(in: -200..<200)))
                DragableImage(imageName: "6")
                    .offset(x:CGFloat(Int.random(in: -150..<150)), y:CGFloat(Int.random(in: -200..<200)))
                DragableImage(imageName: "7")
                    .offset(x:CGFloat(Int.random(in: -150..<150)), y:CGFloat(Int.random(in: -200..<200)))
                DragableImage(imageName: "8")
                    .offset(x:CGFloat(Int.random(in: -150..<150)), y:CGFloat(Int.random(in: -200..<200)))
                DragableImage(imageName: "9")
                    .offset(x:CGFloat(Int.random(in: -150..<150)), y:CGFloat(Int.random(in: -200..<200)))
                
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

