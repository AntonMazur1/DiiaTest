//
//  DocumentCollectionViewCell.swift
//  diiaTestForMySelf
//
//  Created by Клоун on 21.09.2022.
//

import UIKit

class DocumentCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "documentCell"

    @IBOutlet weak var numberOfDocument: UILabel!
    @IBOutlet weak var nameOfUser: UILabel!
    @IBOutlet weak var dateOfBirth: UILabel!
    @IBOutlet weak var documentsPhoto: UIImageView!
    @IBOutlet weak var nameOfDocument: UILabel!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        documentsPhoto.layer.cornerRadius = 20
    }

    func configureCell(_ user: User) {
        nameOfUser.text = user.name
        dateOfBirth.text = user.dateOfBirth
        documentsPhoto.image = UIImage(named: user.documentsPhoto)
        nameOfDocument.text = user.nameOfDocument
        numberOfDocument.text = user.numberOfDocuments
    }
}
