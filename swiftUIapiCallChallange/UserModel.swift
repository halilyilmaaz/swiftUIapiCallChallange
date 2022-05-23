//
//  UserModel.swift
//  swiftUIapiCallChallange
//
//  Created by halil yılmaz on 23.05.2022.
//

import Foundation


struct User: Codable, Identifiable{
    let id: Int
    let name: String
    let email: String
    let company: Company
}

struct Company: Codable {
    let name: String
    
}
