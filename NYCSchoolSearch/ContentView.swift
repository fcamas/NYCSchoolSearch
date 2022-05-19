//
//  ContentView.swift
//  NYCSchoolSearch
//
//  Created by Life on 5/18/22.
//

import SwiftUI

struct ContentView: View {
    var schoolNetwork = SchoolNetwork()
    var body: some View {
        ZStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]){
                    ForEach(schoolNetwork){name in
                        SchoolCardView(name: name)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SchoolCardView: View {
    
    var name:String
    var body: some View {
        ZStack{
            let shape = RoundedRectangle(cornerRadius: 25)
            shape.strokeBorder(lineWidth: 3)
            Text(name)
        }
    }
}
