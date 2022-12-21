//
//  HomeScreenView.swift
//  MarketTest
//
//  Created by Константин Каменчуков on 14.12.2022.
//

import SwiftUI
import XCoordinator
struct HomeScreenView: View {
    @ObservedObject var viewModel: HomeViewModel
    @ObservedObject var network = NetworkManager()
    @State var homeData: HomeModel?
    @State var homeStore: [HomeStore] =  []
    @State var bestSaller: [BestSeller] = []
    private let homeUrl = "https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175"
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        ScrollView(showsIndicators: true) {
                VStack {
                    HomeStoreView()
                        .frame(height: 250)
                        .background {
                            selfColors.orange
                        }
//                    Spacer(minLength: 35)
                    
                    HotSalesView()
                        .frame(height: 300)
                        .background {
                            selfColors.orange
                        }

                    HomeBestSellerView()
                        .frame(height: 350)
                        .background {
                            selfColors.orange
                        }
                }
                .background(content: {
                    selfColors.deepBlue})
                            .onAppear {
                                network.getHomeData(url: homeUrl) { homedata in
                                    self.homeData = homedata
                                    self.homeStore = homedata.homeStore
                                    self.bestSaller = homedata.bestSeller
                            }
                    }
                }
            
        }
    }

//struct HomeScreenView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeScreenView(viewModel: HomeViewModel)
//    }
//}
