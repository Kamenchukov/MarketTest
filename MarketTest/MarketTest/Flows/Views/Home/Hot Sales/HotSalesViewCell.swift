//
//  HotSalesViewCell.swift
//  MarketTest
//
//  Created by Константин Каменчуков on 18.12.2022.
//

import SwiftUI

struct HotSalesViewCell: View {
    var imageName = "kaney"
    @State var isNew = true
    
    var body: some View {
        ZStack(alignment: .leading) {
            Image(imageName)
                .resizable()
                .frame(width: 378, height: 182)
            VStack(alignment: .leading) {
                if isNew == true {
                    Text("New")
                        .font(Font.custom("Mark Pro Medium", size: 10))
                        .frame(width: 27, height: 27)
                        .background(selfColors.orange)
                        .cornerRadius(13)
                }
                
                Text("Iphone 12")
                    .font(Font.custom("Mark Pro Medium", size: 25))
                    .foregroundColor(.white)
                Text("Super. Mega. Rapido")
                    .font(Font.custom("Mark Pro", size: 11))
                    .foregroundColor(.white)
                Button {
                    print("Buy now")
                } label: {
                    Text("Buy now")
                        .font(Font.custom("Mark Pro Medium", size: 11))
                        .frame(width: 98, height: 23)
                        .background(Color.white)
                        .cornerRadius(7)
                }

                
            }.padding(32)
        }
    }
}
struct HotSalesViewCell_Previews: PreviewProvider {
    static var previews: some View {
        HotSalesViewCell()
    }
}
