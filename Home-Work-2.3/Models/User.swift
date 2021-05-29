//
//  User.swift
//  Home-Work-2.3
//
//  Created by Татьяна Татьяна on 29.05.2021.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Profile
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "Password",
            person: Profile.getProfile())
    }
}

struct Profile {
    let name: String
    let surname: String
    let midlname: String
    
    var fullName: String {
        "\(name) \(midlname) \(surname)"
    }
    
    let age: Int
    let weight: Int
    let height: Int
    
    static func getProfile() -> Profile {
        Profile(
            name: "Victor",
            surname: "Bugreev",
            midlname: "Victorovich",
            age: 31,
            weight: 86,
            height: 185)
    }
}
