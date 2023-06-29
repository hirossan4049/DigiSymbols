//
//  HomeScreen.swift
//  DigiSymbols
//
//  Created by a on 6/28/23.
//

import SwiftUI

struct IconScreen: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
        
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
        }
    }

}


//#Preview("HomeScreen") {
//    Text("hello")
//}
