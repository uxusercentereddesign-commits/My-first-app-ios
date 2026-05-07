//
//  ContentView.swift
//  My First App
//
//  Created by Harshit Agarwal on 06/05/26.
//

import SwiftUI

struct Book {
    let title: String
    let author: String
    var isRead: Bool
    
    var summary: String {
        let status = isRead ? "finished" : "unread"
        return "\(title) by \(author) (\(status))"
    }
}

struct ContentView: View {
    let myBook = Book(
        title: "Design Systems",
        author: "Alla Kholmatova",
        isRead: true
        
    )

    var body: some View {
        Text(myBook.summary)
            .padding()
        Image(systemName: "star.fill")

    }
}
#Preview("light Mode") {
    ContentView()
        .preferredColorScheme(.light)
}

#Preview("Dark Mode") {
    ContentView()
        .preferredColorScheme(.dark)
}
