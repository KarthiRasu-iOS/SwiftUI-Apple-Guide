//
//  PageView.swift
//  SwiftUI-Apple-Guide
//
//  Created by Karthi Rasu on 01/06/24.
//

import SwiftUI

struct PageView<Page:View>: View {
    
    @State var currentPage : Int = 0
    
    var pages : [Page]
    
    var body: some View {
        ZStack(alignment:.bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage)
                .aspectRatio(3/2, contentMode: .fit)
            PageController(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
    }
}


#Preview {
    PageView(pages: ModelData().features.map({ FeatureCard(landmark: $0) }))
}
