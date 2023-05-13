//
//  ContentView.swift
//  NBA-News-SwiftUI
//
//  Created by James Lea on 5/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button {
            NetworkHelper.fetchNewsArticles { articles in
                print(articles)
            }
        } label: {
            Text("goy")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
