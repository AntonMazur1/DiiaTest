//
//  DocumentsViewController.swift
//  diiaTestForMySelf
//
//  Created by Клоун on 21.09.2022.
//

import UIKit

enum CurrentPage: Int {
    case first = 1
    case second = 2
    case third = 3
}

class DocumentsViewController: UIViewController {

    @IBOutlet weak var gradientView: UIView!
    @IBOutlet weak var pageController: UIPageControl!
    @IBOutlet weak var documentsCollectionView: UICollectionView!
    
    private var currentPage: CurrentPage = .first
    private let user = User.getInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        documentsCollectionView.register(UINib(nibName: "DocumentCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: DocumentCollectionViewCell.identifier)
        documentsCollectionView.layer.cornerRadius = 20
        
        pageController.currentPage = currentPage.rawValue
        pageController.numberOfPages = DataStorage.shared.numberOfDocument.count
        
        tabBarController?.tabBar.tintColor = .black
        changeColor()
    }
    
    private func changeColor() {
        switch pageController.currentPage {
        case 0:
            gradientView.backgroundColor = #colorLiteral(red: 0.7241791487, green: 0.7093052268, blue: 0.8037115932, alpha: 1)
        case 1:
            gradientView.backgroundColor = #colorLiteral(red: 0.9175009131, green: 0.8729818463, blue: 0.8262086511, alpha: 1)
        case 2:
            gradientView.backgroundColor = #colorLiteral(red: 0.7176083326, green: 0.9114618897, blue: 0.6767963171, alpha: 1)
        default:
            break
        }
    }
    
}

extension DocumentsViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        DataStorage.shared.numberOfDocument.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DocumentCollectionViewCell.identifier, for: indexPath) as! DocumentCollectionViewCell
        let user = user[indexPath.row]
        cell.configureCell(user)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        pageController.currentPage = indexPath.row
        changeColor()
    }
}

