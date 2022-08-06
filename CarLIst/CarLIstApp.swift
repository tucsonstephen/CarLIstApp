//
//  CarLIstApp.swift
//  CarLIst
//
//  Created by Office Mac on 8/6/22.
//

import SwiftUI

@main
struct CarListApp: App {
    @State var details = CarDetailsModel()
    
    var body: some Scene {
        WindowGroup {
            CarListView()
                .environmentObject(details)
        }
    }
}
