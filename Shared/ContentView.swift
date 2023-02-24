//
//  ContentView.swift
//  Shared
//
//  Created by Xyd on 2022-07-27.
//

import SwiftUI


// Contents of the screen
struct ContentView: View {
    
    @State var emojiCount = 14
    var body: some View {
        VStack{
            title
            // Emoji cards
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]){
                    //HStack{
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
                //Spacer()
                // Remove / Add Options
//                HStack{
//                    remove
//                    Spacer()
//                    LikeButton()
//                    Spacer()
//                    add
//                }
//                .font(.largeTitle)
//                .padding(.horizontal)
            }.padding(.all)
        
    }
}
    
//    Title
var title: some View{
    Text("Memorize!")
        .font(.largeTitle)
        .fontWeight(.bold)
        .foregroundColor(Color.red)
}
//    // Remove Card Button
//    var remove: some View {
//        Button(action: {
//            if(emojiCount > 1){
//                emojiCount -= 1
//            }
//        }, label : {
//            VStack{
//                Text("Remove")
//                Text("Card")
//                Image(systemName: "minus")
//            }
//        })
//    }
//
//
//    // Add Card Button
//    var add: some View {
//        Button(action: {
//            if(emojiCount < emojis.count){
//                emojiCount += 1
//            }
//        }, label : {
//
//            VStack{
//
//                Text("Add")
//                Text("Card")
//                Image(systemName: "plus")
//            }
//        })
//    }
//}


// Card structure
struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 25)
            if isFaceUp{
            // Outlined rectangle on top of filled rectangle
                shape.foregroundColor(.white)
                shape.strokeBorder(lineWidth: 5).foregroundColor(.gray)
                Text(content).foregroundColor(.orange).font(.largeTitle)
            } else {
            // Back of card
                shape.foregroundColor(.green)
            }
        }
        .onTapGesture{
            isFaceUp = !isFaceUp
        }
    }
}


//
struct LikeButton: View {
    @State var isLiked : Bool = false;
    var body: some View{
        ZStack{
            if(isLiked){
                Image(systemName: "heart.fill")
            } else {
                Image(systemName: "heart")
            }
        }.onTapGesture {
            isLiked = !isLiked
        }
        .foregroundColor(.pink)
    }
}

// Preview Function
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .previewInterfaceOrientation(.portraitUpsideDown)
        ContentView()
            .preferredColorScheme(.light)

    }
}
