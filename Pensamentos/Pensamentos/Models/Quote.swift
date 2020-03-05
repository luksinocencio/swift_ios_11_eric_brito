//
//  Quote.swift
//  Pensamentos
//
//  Created by Lucas Inocencio on 27/11/17.
//  Copyright © 2017 Lucas Inocencio. All rights reserved.
//

import Foundation

struct Quote: Codable {
    let quote: String
    let author: String
    let image: String
    
    var quoteFormatted: String {
        return " 〝" + quote + "〞 "
    }
    
    var authorFormatted: String {
        return "- " + author + " -"
    }
    
}
