//
//  ArticleTitleView.swift
//  NBA-News-SwiftUI
//
//  Created by James Lea on 5/12/23.
//

import SwiftUI

struct ArticleTitleView: View {
    
    var article: Article
    var icon: String {
        switch article.source {
        case "nba", "nba canada":
            return "NBA-Icon"
        case "slam":
            return "Slam-Icon"
        case "espn":
            return "ESPN-Icon"
        case "bleacher report":
            return "Bleacher-Icon"
        default:
            return
            "NBA-Icon"
        }
    }
    
    var body: some View {
        HStack {
            Image(icon)
                .resizable()
                .frame(width: 48, height: 48)
                .foregroundColor(.white)
                .padding(.trailing, 8)
            VStack(alignment: .leading) {
                Text(article.title)
                    .font(.headline)
                Text(article.source)
                    .font(.subheadline)
            }
            Spacer()
        }
        .cornerRadius(8)
        .padding()
    }
}


struct ArticleTitleView_Previews: PreviewProvider {
    static var previews: some View {
        let goy = Article(title: "", url: "", source: "")
        ArticleTitleView(article: goy)
    }
}
