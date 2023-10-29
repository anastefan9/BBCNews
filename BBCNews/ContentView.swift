//
//  ContentView.swift
//  BBCNews
//
//  Created by Ana Ștefan on 25.10.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var data = NewsAPI()
    
    var body: some View {
        NavigationView {
            VStack {
                NewsView()
            }
            .navigationTitle("B B C")
            .environmentObject(data)
            .onAppear {
                data.getData()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
