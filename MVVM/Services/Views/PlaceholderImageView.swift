//
//  PlaceholderImageView.swift
//  MVVM
//
//  Created by Reza Harris on 17/10/21.
//

import SwiftUI

struct PlaceholderImageView: View {
    var body: some View {
        Image(systemName: "photo.fill")
            .foregroundColor(.white)
            .background(Color.gray)
            .frame(width: 100, height: 100)
    }
}

struct PlaceholderImageView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceholderImageView()
    }
}
