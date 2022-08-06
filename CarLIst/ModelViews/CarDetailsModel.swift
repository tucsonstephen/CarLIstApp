//
//  CarDetailsModel.swift
//  CarLIst
//
//  Created by Office Mac on 8/6/22.
//

import Foundation

class CarDetailsModel: ObservableObject {
    
    @Published var cars = [CarDetails]()
    
    init() {
        // Create an instance of the data service and get the data
        self.cars = DataService().getLocalData()
        
    }
}
