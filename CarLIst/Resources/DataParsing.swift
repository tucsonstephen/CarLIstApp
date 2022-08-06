//
//  DataParsing.swift
//  CarLIst
//
//  Created by Office Mac on 8/6/22.
//

import Foundation

class DataService {
    
    func getLocalData() -> [CarDetails] {
        
        // Parse local json file
        
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "car_list", ofType: "json")
        
        guard pathString != nil else{
            return [CarDetails]()
        }
        
        // Create a url objext
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // Create a data object
            let data = try Data(contentsOf: url)
            
            // Decode the data with a json decoder
            let decoder = JSONDecoder()
            
            do {
                let carData = try decoder.decode([CarDetails].self, from: data)
                 
                 // Add the unique ID
                for d in carData {
                    d.id = UUID()
                }
                   
                 // Return the recipes
                return carData
            }
            catch {
                print(error)
            }
          
        }
        catch {
            print(error)
        }
        return [CarDetails]()
    }
    
}
