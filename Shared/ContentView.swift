//
//  ContentView.swift
//  Shared
//
//  Created by Xyd on 2022-07-27.
//

import SwiftUI

struct ContentView: View {
    //    var i: Int
    //    var s: String
    //    var counter: Int
    //    counter = 100;
    
    var body: some View {
        return ZStack(content: {
            RoundedRectangle(cornerRadius: 25)
                .stroke(lineWidth: 5)
                .foregroundColor(.gray)
                .padding(.horizontal)
            Text("Hello, Xyd!")
                .padding()
                .foregroundColor(Color.orange)
            
        })
        


            
        
        
        
    

    
    
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
