//
//  HomeStoreView.swift
//  MarketTest
//
//  Created by Константин Каменчуков on 17.12.2022.
//

import SwiftUI

struct HomeStoreView: View {
    @State var show1 = true
    @State var show2 = false
    @State var show3 = false
    @State var show4 = false
    @State var show5 = false
    
    var body: some View {
        NavigationView {
            ScrollView(.horizontal) {
                HStack(spacing: 23) {
                    VStack {
                        Button {
                            self.show1.toggle()
                            self.show2 = false
                            self.show3 = false
                            self.show4 = false
                            self.show5 = false
                        } label: {
                            Image(systemName: "iphone.gen1")
                                .resizable()
                                .foregroundColor(show1 ? Color.white : Color.gray)
                                .frame(width: 18.33, height: 30)
                                .background(show1 ?
                                            RoundedRectangle(cornerRadius: 35.5)
                                    .frame(width: 71, height: 71)
                                    .foregroundColor(show1 ? selfColors.orange : selfColors.deepBlue): nil
                                )
                        }
                        .padding(22)
                        Text("Phones")
                            .font(Font.custom("Mark Pro", size: 12))
                            .foregroundColor(show1 ? selfColors.orange : selfColors.deepBlue)
                    }
                    VStack {
                        Button {
                            self.show2.toggle()
                            self.show1 = false
                            self.show3 = false
                            self.show4 = false
                            self.show5 = false
                        } label: {
                            Image(systemName: "display")
                                .resizable()
                                .foregroundColor(show2 ? Color.white : Color.gray)
                                .frame(width: 29, height: 31)
                                .background(show2 ?
                                            RoundedRectangle(cornerRadius: 35.5)
                                    .frame(width: 71, height: 71)
                                    .foregroundColor(show2 ? selfColors.orange : selfColors.deepBlue): nil
                                )
                        }
                        .padding(22)
                        Text("Computer")
                            .font(Font.custom("Mark Pro", size: 12))
                            .foregroundColor(show2 ? selfColors.orange : selfColors.deepBlue)
                    }
                    VStack {
                        Button {
                            self.show3.toggle()
                            self.show2 = false
                            self.show1 = false
                            self.show4 = false
                            self.show5 = false
                        } label: {
                            Image(systemName: "bolt.heart")
                                .resizable()
                                .foregroundColor(show3 ? Color.white : Color.gray)
                                .frame(width: 32, height: 30)
                                .background(show3 ?
                                            RoundedRectangle(cornerRadius: 35.5)
                                    .frame(width: 71, height: 71)
                                    .foregroundColor(show3 ? selfColors.orange : selfColors.deepBlue): nil
                                )
                        }
                        .padding(22)
                        Text("Health")
                            .font(Font.custom("Mark Pro", size: 12))
                            .foregroundColor(show3 ? selfColors.orange : selfColors.deepBlue)
                    }
                    VStack {
                        Button {
                            self.show4.toggle()
                            self.show2 = false
                            self.show3 = false
                            self.show1 = false
                            self.show5 = false
                        } label: {
                            Image(systemName: "books.vertical")
                                .resizable()
                                .foregroundColor(show4 ? Color.white : Color.gray)
                                .frame(width: 32, height: 30)
                                .background(show4 ?
                                            RoundedRectangle(cornerRadius: 35.5)
                                    .frame(width: 71, height: 71)
                                    .foregroundColor(show4 ? selfColors.orange : selfColors.deepBlue): nil
                                )
                        }
                        .padding(22)
                        Text("Books")
                            .font(Font.custom("Mark Pro", size: 12))
                            .foregroundColor(show4 ? selfColors.orange : selfColors.deepBlue)
                    }
                    VStack {
                        Button {
                            self.show5.toggle()
                            self.show2 = false
                            self.show4 = false
                            self.show3 = false
                            self.show1 = false
                        } label: {
                            Image(systemName: "ellipsis.rectangle")
                                .resizable()
                                .foregroundColor(show5 ? Color.white : Color.gray)
                                .frame(width: 32, height: 18)
                                .background(show5 ?
                                            RoundedRectangle(cornerRadius: 35.5)
                                    .frame(width: 71, height: 71)
                                    .foregroundColor(show5 ? selfColors.orange : selfColors.deepBlue): nil
                                )
                        }
                        .padding(22)
                        Text("Other")
                            .font(Font.custom("Mark Pro", size: 12))
                            .foregroundColor(show1 ? selfColors.orange : selfColors.deepBlue)
                    }
                    .navigationTitle("Select Category")
                    .font(Font.custom("Mark Pro Heavy", size: 25))
                }.padding(27)
                    
                  
            }
//            .navigationTitle("Select Category")
//            .font(Font.custom("Mark Pro Heavy", size: 25))
        }
    }
}
struct HomeStoreView_Previews: PreviewProvider {
    static var previews: some View {
        HomeStoreView()
    }
}
