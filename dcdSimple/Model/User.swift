//
//  User.swift
//  dcdSimple
//
//  Created by Muhammad Nashrullah on 01/09/22.
//

import Foundation


struct User: Decodable {
    let id: Int
    let name: String
    let username: String
    let email: String
    let phone: String
    let website: String
}

let userPreview = User(
    id: 1,
    name: "Leanne Graham",
    username: "Bret",
    email: "Sincere@april.biz",
    phone: "1-770-736-8031 x56442",
    website: "hildegard.org"
)

