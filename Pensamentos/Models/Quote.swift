//
//  Quote.swift
//  Pensamentos
//
//  Created by Francisco Washington de Almeida Oliveira on 20/12/21.
//

import Foundation

struct Quote : Codable {
    let quote: String
    let author: String
    let image: String
    
    var quoteFormatted: String {
        return "‟" + quote + "”"
    }
    var authotFormatted: String {
        return "- " + author + " -"
    }
}

