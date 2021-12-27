//
//  QuotesManager.swift
//  Pensamentos
//
//  Created by Francisco Washington de Almeida Oliveira on 20/12/21.
//

import Foundation

class QuotesManager {
    let quotes: [Quote]
    init(){
        let fileURL = Bundle.main.url(forResource: "quotes", withExtension: "json")!
        let jsonData = try! Data(contentsOf: fileURL)
        let jsonDecoder  = JSONDecoder()
        quotes = try! jsonDecoder.decode([Quote].self , from: jsonData)
    }
    func getRandomQuote() -> Quote {
        let index = Int(arc4random_uniform(UInt32(quotes.count)))
        return quotes[index]
    }
    
}
