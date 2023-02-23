//
//  ContentView.swift
//  SuperKahramanSwiftUI
//
//  Created by Hakan ERDOĞMUŞ on 18.02.2023.
//

import SwiftUI

struct ListeView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListeView()
    }
}
