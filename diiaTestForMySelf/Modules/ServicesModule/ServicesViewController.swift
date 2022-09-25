//
//  ServicesViewController.swift
//  diiaTestForMySelf
//
//  Created by Клоун on 25.09.2022.
//

import UIKit

protocol ServicesViewProtocol: AnyObject {
    
}

class ServicesViewController: UIViewController, ServicesViewProtocol {
    var presenter: ServicesPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
