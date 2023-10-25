//
//  ContentView.swift
//  BBCNews
//
//  Created by Ana Ștefan on 25.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            
            Text("Content View")
                .foregroundColor(.white)
                .font(.system(size: 18))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
