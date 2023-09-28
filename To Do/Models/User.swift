//
//  User.swift
//  To Do
//
//  Created by Aray Muratova on 13.09.2023.
//

import Foundation

struct User:Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
