//
//  CarDetailsCard.swift
//  CarLIst
//
//  Created by Office Mac on 8/9/22.
//

import SwiftUI

struct CarDetailsCard: View {
    
    var car:CarDetails
    
    var body: some View {
        
        HStack (alignment: .top) {
            Image(car.image ?? "")
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .clipped()
            
            VStack (alignment: .leading) {
                let name = car.make! + " " + car.model!
                Text(name)
                    .bold()
                    .font(.title2)
                    .padding(.bottom, 5)
                
                let price =  car.customerPrice!.formatted(.currency(code: "USD"))
                Text(price)
                    .font(.subheadline)
                Text("Rating: \(String(car.rating ?? 0))/5")
                    .font(.subheadline)
                
                VStack (alignment: .leading) {
                    Text("Pros:")
                        .bold()
                        .font(.subheadline)

                    if car.prosList != nil {
                        ForEach (0..<car.prosList!.count, id: \.self) { pro in
                            Text("- " + car.prosList![pro])
                        }
                    }
                }
                .padding(.vertical, 5)
                
                VStack (alignment: .leading) {
                    Text("Cons: ")
                        .bold()
                        .font(.subheadline)
                    
                    if car.consList != nil {
                    ForEach(0..<car.consList!.count, id:\.self) { index in
                        Text("- " + car.consList![index])
                    }
                    }
                    }
                }
            }
        .cornerRadius(20)
        }

    }


struct CarDetailsCard_Previews: PreviewProvider {
    static var previews: some View {
        let car = CarDetailsModel()
        
        CarDetailsCard(car: car.cars[0])
    }
}

