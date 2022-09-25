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

enum CurrentPage: Int {
    case first = 1
    case second = 2
    case third = 3
}

class DocumentsViewController: UIViewController, DocumentsViewProtocol {
    @IBOutlet weak var gradientView: UIView!
    @IBOutlet weak var pageController: UIPageControl!
    @IBOutlet weak var documentsCollectionView: UICollectionView!
    
    var presenter: DocumentsPresenterProtocol?
    
    var currentPage: CurrentPage = .first
    private var users: [User] = []
    
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

extension DocumentsViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        DataStorage.shared.numberOfDocument.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DocumentCollectionViewCell.identifier, for: indexPath) as! DocumentCollectionViewCell
        let user = users[indexPath.row]
        cell.configureCell(user)

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        pageController.currentPage = indexPath.row
    }
}

