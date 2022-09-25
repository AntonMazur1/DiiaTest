//
//  ServicesModuleBuilder.swift
//  diiaTestForMySelf
//
//  Created by Клоун on 25.09.2022.
//

import UIKit

class ServicesModuleBuilder {
    static func build() -> ServicesViewController {
        let interactor = ServicesInteractor()
        let router = ServicesRouter()
        let presenter = ServicesPresenter(interactor: interactor, router: router)
        let storyboard = UIStoryboard(name: "ServicesStoryboard", bundle: nil)
        let serviceVC = storyboard.instantiateViewController(withIdentifier: "serviceVC") as! ServicesViewController
        serviceVC.presenter = presenter
        presenter.view = serviceVC
        router.viewController = serviceVC
        interactor.presenter = presenter
        return serviceVC
    }
}
