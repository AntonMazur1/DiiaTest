//
//  ServicesDataStorage.swift
//  diiaTestForMySelf
//
//  Created by Клоун on 27.09.2022.
//

import Foundation

class ServicesDataStorage {
    static let shared = ServicesDataStorage()
    
    let serviceNames = ["Допомога армії", "COVID-сертифікати", "Опитування", "Пошкоджене майно", "Оформлення допомоги для ВПО", "Допомога по безробіттю", "Дія TV", "Дія Радіо", "Штрафи ПДР", "Шеринг авто", "Податки ФОП", "Довідки", "Виконавчі провадження"]
    let serviceImages = ["⚡️", "😷", "💬", "🏚", "📦", "👔", "📺", "📻", "🚔", "🏁", "💼", "📋", "🏛"]
    
    private init() {}
}
