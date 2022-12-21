//
//  BasketScreenView.swift
//  MarketTest
//
//  Created by Константин Каменчуков on 20.12.2022.
//

import SwiftUI
import XCoordinator

struct BasketScreenView: View {
    @ObservedObject var viewModel: BasketViewModel
    @ObservedObject var network = NetworkManager()
    @State var basket: MyCardModel
    private let basketUrl = "https://run.mocky.io/v3/53539a72-3c5f-4f30-bbb1-6ca10d42c149"
    
    var body: some View {
        VStack {
            Text("BasketScreenView")
        }.onAppear {
            network.getBasketData(url: basketUrl) { data in
                self.basket = data
            }
                }
        }
}
        

