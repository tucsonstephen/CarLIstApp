//
//  ContentView.swift
//  CarLIst
//
//  Created by Office Mac on 8/6/22.
//

import SwiftUI

struct CarListView: View {
    
    // reference the model
    @EnvironmentObject var model: CarDetailsModel
    
    var body: some View {
        
        VStack (alignment: .leading) {
            Text("Car List")
                .bold()
                .font(.title)
            ScrollView {
                LazyVStack (alignment: .leading) {
                    
                    ForEach (model.cars) { car in
                        
                        CarDetailsCard(car: car)
                        
                    }
                }
            }
        }
        .padding(.horizontal)
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CarListView().environmentObject(CarDetailsModel())
    }
}
