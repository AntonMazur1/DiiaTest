//
//  DocumentsPresenter.swift
//  diiaTestForMySelf
//
//  Created by Клоун on 24.09.2022.
//

import UIKit

protocol DocumentsPresenterProtocol: AnyObject {
    func viewDidLoaded(_ vc: DocumentsViewController)
    func didLoadInfo(_ users: [User])
    func colorChanged(_ color: UIColor)
}

class DocumentsPresenter {
    weak var view: DocumentsViewProtocol?
    var router: DocumentsRouterProtocol
    var interactor: DocumentsInteractorProtocol
    
    init(router: DocumentsRouterProtocol, interactor: DocumentsInteractorProtocol) {
        self.router = router
        self.interactor = interactor
    }
}

extension DocumentsPresenter: DocumentsPresenterProtocol {
    func colorChanged(_ color: UIColor) {
        view?.changeColor(color)
    }
    
    func didLoadInfo(_ users: [User]) {
        view?.showInfo(users: users)
    }
    
    func viewDidLoaded(_ vc: DocumentsViewController) {
        interactor.loadUserData()
        interactor.changeColor(vc)
        
        vc.documentsCollectionView.register(UINib(nibName: "DocumentCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: DocumentCollectionViewCell.identifier)
        vc.documentsCollectionView.layer.cornerRadius = 20
        
        vc.pageController.currentPage = vc.currentPage.rawValue
        vc.pageController.numberOfPages = DataStorage.shared.numberOfDocument.count
    }
}
