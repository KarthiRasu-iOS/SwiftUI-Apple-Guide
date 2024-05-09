//
//  FavouriteButton.swift
//  SwiftUI-Apple-Guide
//
//  Created by Karthi Rasu on 09/05/24.
//

import SwiftUI

struct FavouriteButton: View {
    
    @Binding var isSet : Bool
    
    var body: some View {
        Button(action: {
            isSet.toggle()
        }, label: {
            Label("Toogle Favourite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? Color.yellow : Color.gray)
        })
    }
}

#Preview {
    FavouriteButton(isSet: .constant(false))
}
