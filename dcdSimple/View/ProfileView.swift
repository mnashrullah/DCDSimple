//
//  ProfileView.swift
//  dcdSimple
//
//  Created by Muhammad Nashrullah on 04/09/22.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(alignment: .center){
            Text("Created by: Muhammad Nashrullah")
            ImageView(resource: "profile",size: 160)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
