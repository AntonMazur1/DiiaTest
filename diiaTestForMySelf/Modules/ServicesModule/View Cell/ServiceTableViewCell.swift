//
//  ServiceTableViewCell.swift
//  diiaTestForMySelf
//
//  Created by Клоун on 27.09.2022.
//

import UIKit

class ServiceTableViewCell: UITableViewCell {
    static let identifier = "serviceCell"

    @IBOutlet weak var serviceName: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    func configureCell(_ service: Service) {
        emojiLabel.text = service.serviceImage
        serviceName.text = service.serviceName
    }
}
