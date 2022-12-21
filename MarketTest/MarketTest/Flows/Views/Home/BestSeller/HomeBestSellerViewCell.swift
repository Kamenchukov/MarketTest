//
//  HomeBestSellerViewCell.swift
//  MarketTest
//
//  Created by Константин Каменчуков on 16.12.2022.
//

import SwiftUI

struct HomeBestSellerViewCell: View {
    var index = 0
             init(row : Int , column : Int) {
                 index =  row+column+(row*2)
             }
    var body: some View {
        ZStack{
        RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .frame(width: cell.width, height: cell.height)
            VStack {
                Image("Ross_Geller")
           .resizable()
           .aspectRatio(contentMode: .fit)
           .frame(width: 187, height: 168)
           .foregroundColor(.black)
                HStack {
                    Text("1000")
                        .font(Font.custom("Mark Pro Bold", size: 16))
                    Text("1500")
                        .font(Font.custom("Mark Pro Medium", size: 10))
                }
                    Text("Sumsung Galaxy")
                    .font(Font.custom("Mark Pro", fixedSize: 10))
                    }
            heartView()
        }
        .onTapGesture {
                         print("\(self.index)")
                 }
    }
    
}

struct heartView: View {
    var body: some View {
                Image(systemName: "heart")
            .frame(width: 30,height: 30)
            .background(.white)
            .cornerRadius(15)
            .foregroundColor(Color.orange)
            .offset(x:70, y: -90)
            .onTapGesture {
                print("heart")
            }
    }
}

struct HomeBestSellerViewCell_Previews: PreviewProvider {
    static var previews: some View {
        HomeBestSellerViewCell(row: 0, column: 1)
    }
}
