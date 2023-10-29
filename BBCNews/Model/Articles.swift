//
//  Articles.swift
//  BBCNews
//
//  Created by Ana Ștefan on 29.10.2023.
//

import Foundation

struct News: Codable {
    let articles: [Article]
}

struct Article: Codable, Hashable {
    let title: String
    let description: String
    let url: String
    let urlToImage: String
    let publishedAt: String
    let content: String
}
