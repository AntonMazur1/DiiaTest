//
//  ServicesInteractor.swift
//  diiaTestForMySelf
//
//  Created by Клоун on 25.09.2022.
//

import Foundation

protocol ServicesInteractorProtocol: AnyObject {
    func loadServices()
}

class ServicesInteractor: ServicesInteractorProtocol {
    weak var presenter: ServicesPresenterProtocol?
    
    func loadServices() {
        let services = Service.getServices()
        presenter?.getServices(services: services)
    }
}
