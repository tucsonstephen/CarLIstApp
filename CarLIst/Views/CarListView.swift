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
                    
                    ForEach (model.cars) { d in
                        
                        HStack (alignment: .top) {
                            Image(d.image!)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150, height: 150)
                                .clipped()

                            VStack (alignment: .leading) {
                                let name = d.make! + " " + d.model!
                                Text(name)
                                    .bold()
                                    .font(.title2)
                                    .padding(.bottom, 5)
                                
                                let price = d.customerPrice?.formatted(.currency(code: "USD"))
                                Text(price!)
                                    .font(.subheadline)
                                Text("Rating: \(String(d.rating ?? 0))/5")
                                    .font(.subheadline)

                            }
                        }
                        .cornerRadius(20)
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
