//
//  ServicesPresenter.swift
//  diiaTestForMySelf
//
//  Created by Клоун on 25.09.2022.
//

import Foundation

protocol ServicesPresenterProtocol: AnyObject {
    
}

class ServicesPresenter {
    weak var view: ServicesViewProtocol?
    var interactor: ServicesInteractorProtocol
    var router: ServicesRouterProtocol
    
    init(interactor: ServicesInteractorProtocol, router: ServicesRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}

extension ServicesPresenter: ServicesPresenterProtocol {
    
}
