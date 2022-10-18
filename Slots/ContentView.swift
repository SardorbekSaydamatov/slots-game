//
//  ContentView.swift
//  Slots
//
//  Created by Sardorbek Saydamatov on 12/10/22.
//

import SwiftUI

struct ContentView: View {
    @State private var credits = 0
    @State private var slot1 = 1
    @State private var slot2 = 1
    @State private var slot3 = 1
    var body: some View {
        
        VStack {
            Spacer()
            Text("SwiftUI Slots!")
                .font(.largeTitle)
            Spacer()
            Text("Credits: \(credits)")
            Spacer()
            HStack{
                Image("fruit\(slot1)").resizable().scaledToFit()
                Image("fruit\(slot2)").resizable().scaledToFit()
                Image("fruit\(slot3)").resizable().scaledToFit()
            }
            Spacer()
            Button("spin"){
                slot1 = Int.random(in: 1...3)
                slot2 = Int.random(in: 1...3)
                slot3 = Int.random(in: 1...3)
                
                if slot1 == slot2 && slot2 == slot3{
                    credits += 15
                }
                else if slot1 == slot2 || slot1 == slot3 || slot2 == slot3{
                    credits += 5
                }
                else if slot1 != slot2 && slot1 != slot3 && slot2 != slot3{
                    if credits > 5{
                        credits -= 5
                        
                    }
                }
            }.padding()
            .padding([.leading, .trailing], 40)
            .foregroundColor(.white)
            .background(Color(.systemPink))
            .cornerRadius(25)
            .font(.system(size: 18, weight: .bold, design: .default))
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
