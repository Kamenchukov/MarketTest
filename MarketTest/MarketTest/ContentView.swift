//
//  ContentView.swift
//  MarketTest
//
//  Created by Константин Каменчуков on 10.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Mark Pro").font(.custom("Mark Pro Bold", size: 34))
                .foregroundColor(selfColors.deepBlue)
                .fontWeight(.bold)
            Text("Around the world")
                .font(.title3)
                .fontWeight(.bold)
            //            .background(selfColors.orange)
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
