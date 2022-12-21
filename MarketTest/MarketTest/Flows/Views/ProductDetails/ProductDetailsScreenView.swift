//
//  ProductDetailsScreenView.swift
//  MarketTest
//
//  Created by Константин Каменчуков on 20.12.2022.
//

import SwiftUI
import XCoordinator

struct ProductDetailsScreenView: View {
    @ObservedObject var viewModel: ProductDetailsViewModel
    @ObservedObject var network = NetworkManager()
    @State var productDetails: ProductDetailsModel
    private let productDetailsUrl = "https://run.mocky.io/v3/6c14c560-15c6-4248-b9d2-b4508df7d4f5"
    
    var body: some View {
        VStack {
            Text("ProductDetailsScreenView")
        }.onAppear {
            network.getProductDetailsData(url: productDetailsUrl) { data in
                self.productDetails = data
                }
            }
        }
        
    }
    


//struct ProductDetailsScreenView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductDetailsScreenView(viewModel: ProductDetailsViewModel)
//    }
//}
