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
                DragableImage(imageName: "1", endLocation: CGPointMake(-100, -100))
                    
                DragableImage(imageName: "2", endLocation: CGPointMake(0, -100))
                   
                DragableImage(imageName: "3", endLocation: CGPointMake(100, -100))
                    
                DragableImage(imageName: "4", endLocation: CGPointMake(-100, 0))
                   
                DragableImage(imageName: "5", endLocation: CGPointMake(0, 0))
                    
                DragableImage(imageName: "6", endLocation: CGPointMake(100, 0))
                 
                DragableImage(imageName: "7", endLocation: CGPointMake(-100, 100))
                    
                DragableImage(imageName: "8", endLocation: CGPointMake(0, 100))
                    
                DragableImage(imageName: "9", endLocation: CGPointMake(100, 100))
                   
                
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

