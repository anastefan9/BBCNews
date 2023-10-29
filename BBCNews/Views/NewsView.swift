//
//  NewsBoxView.swift
//  BBCNews
//
//  Created by Ana Ștefan on 27.10.2023.
//

import SwiftUI

struct NewsView: View {
    @EnvironmentObject var data: NewsAPI
    @Environment(\.openURL) var openURL
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 0) {
                ForEach(data.news, id: \.self) { news in
                    NewsArticleView(news: news)
                        .frame(minHeight: 340)
                        .padding(.bottom, 10)
                }
            }
        }
    }
}

struct NewsBoxView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
            .environmentObject(NewsAPI())
    }
}
