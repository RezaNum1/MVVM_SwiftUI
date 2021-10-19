//
//  NewsResponse.swift
//  MVVM
//
//  Created by Reza Harris on 15/10/21.
//

import Foundation

struct NewsResponse: Codable {
    let articles: [Article]
}

struct Article: Codable, Identifiable {
    let id = UUID()
    let author: String?
    let url: String?
    let source, title, articleDescription: String?
    let image: String?
    let date: Date?
    
    enum CodingKeys: String, CodingKey {
        case author, url, source, title
        case articleDescription = "description"
        case image, date
    }
}

extension Article {
    static var dummyData: Article {
        .init(
            author: "Jaclyn Peiser",
            url:  "https://www.washingtonpost.com/nation/2021/10/06/auschwitz-birkenau-vandalized-holocaust/",
            source: "The Washington Post",
            title: "Auschwitz II-Birkenau barracks vandalized with antisemitic, Holocaust denying graffiti - The Washington Post",
            articleDescription: "The graffiti on the Auschwitz II-Birkenau barracks included « two references to the Old Testament, often used by antisemites, and denial slogans, » the museum said.",
            image: "https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/QPGYYHTAOUI6XILXO5S7FGUVEQ.jpg&w=1440",
            date: Date())
    }
}
