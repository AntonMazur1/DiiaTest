//
//  DocumentsInteractor.swift
//  diiaTestForMySelf
//
//  Created by Клоун on 24.09.2022.
//

import UIKit

protocol DocumentsInteractorProtocol: AnyObject {
    func loadUserData()
    func changeColor(_ vc: DocumentsViewController)
}

class DocumentsInteractor: DocumentsInteractorProtocol {
    weak var presenter: DocumentsPresenterProtocol?
    
    func changeColor(_ vc: DocumentsViewController) {
        var color = UIColor.black
        switch vc.pageController.currentPage {
        case 0:
            color = #colorLiteral(red: 0.7241791487, green: 0.7093052268, blue: 0.8037115932, alpha: 1)
        case 1:
            color = #colorLiteral(red: 0.9175009131, green: 0.8729818463, blue: 0.8262086511, alpha: 1)
        case 2:
            color = #colorLiteral(red: 0.7176083326, green: 0.9114618897, blue: 0.6767963171, alpha: 1)
        default:
            break
        }
        presenter?.colorChanged(color)
    }
    
    func loadUserData() {
        let users = User.getInfo()
        presenter?.didLoadInfo(users)
    }
}
