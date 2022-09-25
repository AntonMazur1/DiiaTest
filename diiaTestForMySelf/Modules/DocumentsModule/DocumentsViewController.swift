//
//  DocumentsViewController.swift
//  diiaTestForMySelf
//
//  Created by Клоун on 21.09.2022.
//

import UIKit

protocol DocumentsViewProtocol: AnyObject {
    func showInfo(users: [User])
    func changeColor(_ color: UIColor)
}

class DocumentsViewController: UIViewController, DocumentsViewProtocol {
    @IBOutlet weak var gradientView: UIView!
    @IBOutlet weak var pageController: UIPageControl!
    @IBOutlet weak var documentsCollectionView: UICollectionView!
    
    var presenter: DocumentsPresenterProtocol?
    
    var currentPage = 0
    var users: [User] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoaded(self)
    }
    
    func changeColor(_ color: UIColor) {
        gradientView.backgroundColor = color
    }
    
    func showInfo(users: [User]) {
        self.users = users
    }
}

