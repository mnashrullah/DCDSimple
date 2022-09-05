//
//  UserDetailView.swift
//  dcdSimple
//
//  Created by Muhammad Nashrullah on 01/09/22.
//

import SwiftUI

struct UserDetailView: View {
    let item: User
    var body: some View {
        UserCardView(item: item, detail: true)
        .navigationTitle(item.name)
    }
}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailView(item: userPreview)
    }
}
