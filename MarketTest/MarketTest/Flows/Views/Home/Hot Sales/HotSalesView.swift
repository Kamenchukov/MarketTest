//
//  HotSalesView.swift
//  MarketTest
//
//  Created by Константин Каменчуков on 18.12.2022.
//

import SwiftUI

struct HotSalesView: View {
    
    var body: some View {
        NavigationView {
            ScrollView(.horizontal, showsIndicators: false) {
                ForEach(0..<1) { i in
                    HStack(spacing: 5) {
                        ForEach(0..<3) { j in
                            HotSalesViewCell()
                                .cornerRadius(10)
                        }.padding(8)
                    }
                }.navigationBarTitle("Hot sales")
                    .font(Font.custom("Mark Pro Heavy", size: 25))
            }
            
        }
    }
}
struct HotSalesView_Previews: PreviewProvider {
    static var previews: some View {
        HotSalesView()
    }
}
