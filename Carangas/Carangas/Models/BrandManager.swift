//
//  BrandManager.swift
//  Carangas
//
//  Created by Lucas Inocencio on 03/02/18.
//  Copyright © 2018 Eric Brito. All rights reserved.
//

import Foundation

class BrandManager {
    
    private static let basePath = "https://fipeapi.appspot.com/api/1/carros/marcas.json"
    
    class func loadBrands(onComplete: @escaping ([Brand]?) -> Void) {
        guard let url = URL(string: basePath) else {
            return
        }
        let dataTask = REST.getSession().dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) in
            if error == nil {
                guard let response = response as? HTTPURLResponse  else {
                    onComplete(nil)
                    return
                }
                
                if response.statusCode == 200 {
                    guard let data = data else {return}
                    do {
                        let brands = try JSONDecoder().decode([Brand].self, from: data)
                        print("=========== \(brands)")
                        onComplete(brands)
                    } catch {
                        print(error.localizedDescription)
                        onComplete(nil)
                    }
                } else {
                    print("Algum status invalido pelo servidor!!! \(response.statusCode)")
                    onComplete(nil)
                }
            } else {
                onComplete(nil)
            }
        }
        dataTask.resume()
    }
}

