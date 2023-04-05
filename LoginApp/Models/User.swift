//
//  User.swift
//  LoginApp
//
//  Created by Sergei Bakhmatov on 05.04.2023.
//

struct User {
    let login: String
    let password: String
    let person: Person
}

struct Person {
    let name: String
    let surname: String
    let photo: String
    let organization: String
    let department: String
    let position: String
    let biography: String
    let pet: Pet
}

struct Pet {
    let name: String
    let photo: String
    let biography: String
}


