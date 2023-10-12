//
//  ContentView.swift
//  Memorize
//
//  Created by CÔNG HIẾU on 12/10/2023.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        let emojis = ["👻","😒","🤩","👿"]
        HStack{
            ForEach(emojis.indices, id: \.self ){ index in
                CardView(content: emojis[index] )
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView : View {
    let content: String
    @State var isFaceUp = true
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 4)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture  {
            isFaceUp.toggle()
        }
    }
}















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
