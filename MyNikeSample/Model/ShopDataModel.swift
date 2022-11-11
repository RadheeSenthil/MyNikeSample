//
//  ShopDataModel.swift
//  MyNikeSample
//
//  Created by Radhika Senthil on 11/3/22.
//

import Foundation

// MARK: - ShopDataModel
struct ShopDataModel: Codable {
    let musthaves : [MustHave]
    let categories : [Category]
    let newarrivals : [NewArrival]
}

// MARK: - MustHave
struct MustHave: Codable, Identifiable {
    let id: Int
    let image, title: String
}

// MARK: - Category
struct Category: Codable, Identifiable {
    let id: Int
    let image, title: String
}

// MARK: - NewArrival
struct NewArrival: Codable, Identifiable {
    let id: Int
    let image, title: String
    let price: String
}


