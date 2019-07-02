//
//  DemoURLs.swift
//  Cassini
//
//  Created by Li on 03/04/2019.
//  Copyright © 2019 Li. All rights reserved.
//

import Foundation

struct DemoURLs {
    static let stanford = Bundle.main.url(forResource: "oval", withExtension: "jpg")
    
    static var NASA: Dictionary<String, URL> = {
        let NASAURLStrings = [
            "Cassini": "https://www.gettyimages.com/gi-resources/images/500px/983794168.jpg",
            "Earth": "https://www.gettyimages.com/gi-resources/images/Editorial_NEWS/1128136875.jpg",
            "Saturn": "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg"
        ]
        var urls = Dictionary<String, URL>()
        for (key, value) in NASAURLStrings {
            urls[key] = URL(string: value)
        }
        return urls
    }()
}
