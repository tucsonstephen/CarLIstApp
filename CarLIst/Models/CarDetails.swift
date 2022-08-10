//
//  CarDetails.swift
//  CarLIst
//
//  Created by Office Mac on 8/6/22.
//

import Foundation

class CarDetails: Identifiable, Decodable {
    
    var id: UUID?
    var image: String?
    var consList: [String]?
    var customerPrice: Double?
    var make: String?
    var marketPrice: Double?
    var model: String?
    var prosList: [String]?
    var rating: Int?
    
}
