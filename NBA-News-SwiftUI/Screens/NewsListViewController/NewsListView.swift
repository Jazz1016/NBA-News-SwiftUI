//
//  NewsListView.swift
//  NBA-News-SwiftUI
//
//  Created by James Lea on 5/12/23.
//

import SwiftUI

struct NewsListView: View {
    
    @StateObject var viewModel = NewsListViewModel()
    
    var displayedArticles: [Article] {
        var lcArticles = viewModel.articles
        
        return viewModel.searchText == "" ? lcArticles : lcArticles.filter {
                $0.title.contains(viewModel.searchText)
            }
    }
    
    func fetchArticles() {
            NetworkHelper.fetchNewsArticles { completion in
                switch completion {
                case .success(let articles):
                    var tempArticles = articles
                    let sortedArticles = tempArticles.sorted
                        { $0.title < $1.title }
                    DispatchQueue.main.async {
                        viewModel.articles = sortedArticles
                    }
                case .failure(let error):
                    print("\(error)")
                }
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(mockTeams) { team in
                            Button {
                                
                            } label: {
                                TeamCell(team: team)
                            }
                        }
                    }
                }
                .frame(height: 80)
                List {
                    ForEach(displayedArticles) { article in
                        NavigationLink {
                            SafariView(url: article.url)
                        } label: {
                            ArticleTitleView(article: article)
                        }
                    }
                }
            }
            
            
        }
        .navigationTitle("NBA News")
        .onAppear {
            fetchArticles()
        }
        .searchable(text: $viewModel.searchText, placement: .navigationBarDrawer(displayMode: .always))
    }
}

struct NewsListView_Previews: PreviewProvider {
    static var previews: some View {
        NewsListView()
    }
}
