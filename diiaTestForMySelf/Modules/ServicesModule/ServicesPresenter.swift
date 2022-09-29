//
//  ServicesPresenter.swift
//  diiaTestForMySelf
//
//  Created by Клоун on 25.09.2022.
//

import UIKit

protocol ServicesPresenterProtocol: AnyObject {
    func viewDidLoaded(_ vc: ServicesViewController)
    func getServices(services: [Service])
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
    func viewDidLoaded(_ vc: ServicesViewController) {
        interactor.loadServices()
        
        vc.servicesTableView.register(UINib(nibName: "ServiceTableViewCell", bundle: nil), forCellReuseIdentifier: ServiceTableViewCell.identifier)
        vc.gradientView.backgroundColor = #colorLiteral(red: 0.8427676558, green: 0.8877212405, blue: 0.9555030465, alpha: 1)
        vc.servicesTableView.delegate = vc
        vc.servicesTableView.dataSource = vc
        vc.servicesTableView.rowHeight = 80
    }
    
    func getServices(services: [Service]) {
        view?.showServices(services: services)
    }
}
