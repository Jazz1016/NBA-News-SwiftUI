//
//  SafariView.swift
//  NBA-News-SwiftUI
//
//  Created by James Lea on 5/12/23.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    
    let url: String
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        let urlLink = URL(string: url) ?? URL(string: "apple.com")!
        return SFSafariViewController(url: urlLink)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
    
}
