//
//  Article.swift
//  NBA-News-SwiftUI
//
//  Created by James Lea on 5/12/23.
//

import Foundation

struct Article: Codable, Identifiable {
    var id: String? = "\(UUID())"
    var title: String
    var url: String
    var source: String
}

