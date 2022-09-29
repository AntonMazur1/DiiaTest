//
//  DataStorage.swift
//  diiaTestForMySelf
//
//  Created by Клоун on 23.09.2022.
//

import Foundation

class DataStorage {
    static let shared = DataStorage()
    
    let nameOfDocuments = [
        "Паспорт громадянина України",
        "Закордонний паспорт",
        "Внутрішній сертифікат",
        "Vacination Certificate"
    ]
    let nameOfUser = "Мазур Антон Вадимович"
    let dateOfBirth = "21.07.2004"
    let numberOfDocument = ["01392342", "PP123456", "842847", "FDFI5435SDA34DJF345DS"]
    let documentsPhoto = "iconForDoc"
    
    private init() {}
}
