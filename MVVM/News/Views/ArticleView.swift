//
//  ArticleView.swift
//  MVVM
//
//  Created by Reza Harris on 15/10/21.
//

import SwiftUI
import URLImage
import URLImageStore


struct ArticleView: View {
    
    let article: Article
    let urlImageService = URLImageService(fileStore: URLImageFileStore(), inMemoryStore: URLImageInMemoryStore())
    
    
    var body: some View {
        HStack {
            if let imgUrl = article.image,
               let url = URL(string: imgUrl) {
                URLImage(url, identifier: article.id
                            .uuidString, failure: { error, _ in
                    PlaceholderImageView()
                },
                         content: { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                })
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
            } else {
                PlaceholderImageView()
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text(article.title ?? "")
                    .foregroundColor(.black)
                    .font(.system(size: 18, weight: .semibold))
                Text(article.source ?? "N/A")
                    .foregroundColor(.gray)
                    .font(.footnote)
            }
        }
        .environment(\.urlImageService, urlImageService)
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleView(article: Article.dummyData)
            .previewLayout(.sizeThatFits)
    }
}
