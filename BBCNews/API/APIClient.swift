//
//  APIClient.swift
//  BBCNews
//
//  Created by Ana Ștefan on 26.10.2023.
//

import Foundation

@MainActor class NewsAPI: ObservableObject {
    @Published var news: [Article] = []
    
    func getData() {
        guard let url = URL(string: "https://newsapi.org/v2/everything?domains=bbc.co.uk&apiKey=1c471bc1e4684233877ef143024f8742") else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                
                DispatchQueue.main.async {
                    self.news = [Article(title: "Error",
                                         description: "Error",
                                         url: "Error",
                                         urlToImage: "Error",
                                         publishedAt: "Error",
                                         content: "None")]
                }
                return
            }
            
            do {
                let decodedData = try JSONDecoder().decode(News.self, from: data)
                let articles = decodedData.articles
                DispatchQueue.main.async {
                    print("Loaded new data successfully. Articles count: \(articles)")
                    self.news = articles
                }
            } catch {
                print("Error decoding JSON: \(error)")
            }
        }.resume()
    }
}
