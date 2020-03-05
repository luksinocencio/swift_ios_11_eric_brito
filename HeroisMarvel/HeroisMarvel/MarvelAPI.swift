//
//  MarvelAPI.swift
//  HeroisMarvel
//
//  Created by Lucas Inocencio on 08/06/18.
//  Copyright © 2018 Eric Brito. All rights reserved.
//

import Foundation
import SwiftHash
import Alamofire

class MarvelAPI {
    static private let basePath = "https://gateway.marvel.com/v1/public/characters?"
    static private let privateKey = "33679a347fea6c7526f82eb51d4db9d4ca65d887"
    static private let publicKey = "9263d9f4fe62c75b4b8358f2f81d9816"
    static private let limit = 50
    
    // Get usando Alamofire e todas as regras da api
    
    class func loadHeroes(name: String?, page: Int = 0, onComplete: @escaping (MarvelInfo?) -> Void) {
        let offset = page * limit
        let startsWith: String
        if let name = name, !name.isEmpty {
            startsWith = "nameStartsWith=\(name.replacingOccurrences(of: " ", with: ""))&"
        } else {
            startsWith = ""
        }
        
        let url = basePath + "offset=\(offset)&limit=\(limit)&" + startsWith + getCredentials()
        print(url)
        Alamofire.request(url).responseJSON { (response) in
            guard let data = response.data else {return}
            do {
                let marvelInfo = try? JSONDecoder().decode(MarvelInfo.self, from: data)
                onComplete(marvelInfo)
                print(marvelInfo)
            } catch {
                print(error.localizedDescription)
                onComplete(nil)
            }
        }
    }
    
    private class func getCredentials() -> String {
        let ts = String(Date().timeIntervalSince1970)
        let hash = MD5(ts+privateKey+publicKey).lowercased()
        return "ts=\(ts)&apikey=\(publicKey)&hash=\(hash)"
    }
    
}
