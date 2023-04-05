//
//  AuthResponse.swift
//  Auth2.0Tutorial
//
//  Created by M A Hossan on 05/04/2023.
//

import Foundation

struct AuthResponse: Codable {
    let access_token: String
    let expires_in: Int
    let refresh_token: String?
    let token_type: String
}
