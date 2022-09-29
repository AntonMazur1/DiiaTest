//
//  User.swift
//  diiaTestForMySelf
//
//  Created by Клоун on 23.09.2022.
//

import Foundation

struct User {
    let name: String
    let dateOfBirth: String
    let documentsPhoto: String
    let nameOfDocument: String
    let numberOfDocuments: String
    
    static func getInfo() -> [User] {
        var users: [User] = []
        
        let name = DataStorage.shared.nameOfUser
        let dateOfBirth = DataStorage.shared.dateOfBirth
        let documentsPhoto = DataStorage.shared.documentsPhoto
        let numberOfDocuments = DataStorage.shared.numberOfDocument
        let nameOfDocuments = DataStorage.shared.nameOfDocuments
        
        let iterationCount = min(numberOfDocuments.count, nameOfDocuments.count)
        
        for index in 0..<iterationCount {
            let user = User(name: name,
                            dateOfBirth: dateOfBirth,
                            documentsPhoto: documentsPhoto,
                            nameOfDocument: nameOfDocuments[index],
                            numberOfDocuments: numberOfDocuments[index])
        
        users.append(user)
        }
        
        return users
    }
}
