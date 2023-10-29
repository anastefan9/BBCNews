//
//  NewsArticleView.swift
//  BBCNews
//
//  Created by Ana Ștefan on 29.10.2023.
//

import SwiftUI
import Kingfisher

struct NewsArticleView: View {
    var news: Article
    
    var body: some View {
        GeometryReader { proxy in
            VStack {
                KFImage(URL(string: news.urlToImage))
                    .resizable()
                    .frame(height: 200)
                    .cornerRadius(8, corners: [.topLeft, .topRight])
                
                VStack(alignment: .leading, spacing: 14) {
                    Text(news.title)
                        .font(.system(size: 18, weight: .medium))
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .frame(minHeight: 50)
                    
                    Text(news.description)
                        .font(.system(size: 14, weight: .regular))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 10)
                .padding(.bottom, 10)
            }
            .border(.gray, width: 1, cornerRadius: 8)
            .padding(.horizontal, 20)
        }
    }
}

