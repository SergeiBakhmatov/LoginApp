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
    
    static func getUser() -> User {
        User(
            login: "Alex",
            password: "1234",
            person: Person(
                name: "Сергей",
                surname: "Бахматов",
                photo: "photoMe",
                organization: "ИЦ АПП",
                department: "АСУ ТП и ППО",
                position: "Инженер 2-ой категории",
                biography: "Родился 16 июня 1994 года. Живу в г. Екатеринбурге. Женат. Детей нет, но есть кошка, она полноценный член нашей семьи. Ввиду своей профессии побывал во многих городах России. Мои проекты в области автоматизации реализованы на многих крупных предприятих, таких как: Северсталь, НЛМК, ММК и тд. В свободное время, которого почти нет 🥹, увлекаюсь играми, фильмами, прогулками.",
                pet: Pet(
                    name: "Клеопатра",
                    photo: "photoPet",
                    age: 4
                )
            )
        )
    }
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
    let age: Int
}


