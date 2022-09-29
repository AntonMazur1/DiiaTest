//
//  DocumentsModuleBuilder.swift
//  diiaTestForMySelf
//
//  Created by Клоун on 24.09.2022.
//

import UIKit

class DocumentsModuleBuilder {
    static func build(usingNavigationFactory factory: NavigationFactory) -> UINavigationController {
        let interactor = DocumentsInteractor()
        let router = DocumentsRouter()
        let presenter = DocumentsPresenter(router: router, interactor: interactor)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let documentsVC = storyboard.instantiateViewController(withIdentifier: "DocumentsVC") as! DocumentsViewController
        documentsVC.presenter = presenter
        presenter.view = documentsVC
        router.documentsVC = documentsVC
        interactor.presenter = presenter
        return factory(documentsVC)
    }
}
