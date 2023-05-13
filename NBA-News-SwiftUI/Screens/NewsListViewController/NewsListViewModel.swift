//
//  NewsListViewModel.swift
//  NBA-News-SwiftUI
//
//  Created by James Lea on 5/12/23.
//

import Foundation

final class NewsListViewModel: ObservableObject {
    
    @Published var articles: [Article] = []
    @Published var searchText: String = ""
    
    @Published var displaySafari: Bool = false
    
}
