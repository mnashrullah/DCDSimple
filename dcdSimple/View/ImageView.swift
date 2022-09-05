//
//  ImageView.swift
//  dcdSimple
//
//  Created by Muhammad Nashrullah on 01/09/22.
//

import SwiftUI

struct ImageView: View {
    let resource: String
    let size : CGFloat
    let defaultSize : CGFloat = 80
    var body: some View {
        Image(resource.isEmpty ? "img1" : resource)
            .resizable()
            .frame(width: size != 0 ? size : defaultSize, height: size != 0 ? size : defaultSize)
            .clipShape(Circle())
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(resource: "img1", size: 40)
    }
}
