//
//  UserCardView.swift
//  dcdSimple
//
//  Created by Muhammad Nashrullah on 01/09/22.
//

import SwiftUI

struct UserCardView: View {
    let item: User
    let detail: Bool
    var body: some View {
        HStack{
            ImageView(resource: "img\(item.id)",size: detail ? 80 : 40)
            VStack(alignment: .leading){
                detail ? nil : Text(item.name).font(.subheadline)
                detail ? VStack(alignment: .leading){
                    Text(item.username).font(.body)
                    Text(item.email).font(.subheadline)
                    Text(item.phone).font(.subheadline)
                    Text(item.website).font(.subheadline)
                } : nil
            }
        }
        .frame(
          minWidth: 0,
          maxWidth: .infinity,
          minHeight: 0,
          maxHeight: .infinity,
          alignment: .topLeading
        )
        .padding(detail ? 15 : 0)
    }
}

struct UserCardView_Previews: PreviewProvider {
    static var previews: some View {
        UserCardView(item: userPreview, detail: false)
    }
}
