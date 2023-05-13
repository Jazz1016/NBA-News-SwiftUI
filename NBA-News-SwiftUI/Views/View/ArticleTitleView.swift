//
//  ArticleTitleView.swift
//  NBA-News-SwiftUI
//
//  Created by James Lea on 5/12/23.
//

import SwiftUI

struct ArticleTitleView: View {
    
    var article: Article
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(article.title)
                    .font(.headline)
                Text(article.source)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
    }
}

struct ArticleTitleView_Previews: PreviewProvider {
    static var previews: some View {
        let goy = Article(title: "", url: "", source: "")
        ArticleTitleView(article: goy)
    }
}
