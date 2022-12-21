//
//  NetworkManager.swift
//  MarketTest
//
//  Created by Константин Каменчуков on 15.12.2022.
//

import Foundation

class NetworkManager : ObservableObject {
    static let shared = NetworkManager()
    
    func getHomeData(url: String, completion: @escaping(HomeModel) -> ()) {
        let session = URLSession(configuration: .default)
        session.dataTask(with: URL(string: url)!) { data, _, err in
            if err != nil { print(err!.localizedDescription)
               return
            }
            // decoding JSON
            do {
                let homeData = try JSONDecoder().decode(HomeModel.self, from: data!)
                // returning homeData
                completion(homeData)
            } catch {
                print(error)
            }
        }
        .resume()
    }
    
    func getProductDetailsData(url: String, completion: @escaping(ProductDetailsModel) -> ()) {
        let session = URLSession(configuration: .default)
        session.dataTask(with: URL(string: url)!) { data, _, err in
            if err != nil { print(err!.localizedDescription)
               return
            }
            // decoding JSON
            do {
                let productDetailsData = try JSONDecoder().decode(ProductDetailsModel.self, from: data!)
                // returning homeData
                completion(productDetailsData)
            } catch {
                print(error)
            }
        }
        .resume()
    }
    
    func getBasketData(url: String, completion: @escaping(MyCardModel) -> ()) {
        let session = URLSession(configuration: .default)
        session.dataTask(with: URL(string: url)!) { data, _, err in
            if err != nil { print(err!.localizedDescription)
               return
            }
            // decoding JSON
            do {
                let myCardlData = try JSONDecoder().decode(MyCardModel.self, from: data!)
                // returning homeData
                completion(myCardlData)
            } catch {
                print(error)
            }
        }
        .resume()
    }
}
