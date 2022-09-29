//
//  ServicesViewController.swift
//  diiaTestForMySelf
//
//  Created by Клоун on 25.09.2022.
//

import UIKit

protocol ServicesViewProtocol: AnyObject {
    func showServices(services: [Service])
}

class ServicesViewController: UIViewController, ServicesViewProtocol {
    @IBOutlet weak var gradientView: UIView!
    @IBOutlet weak var servicesTableView: UITableView!
    
    var presenter: ServicesPresenterProtocol?
    var services: [Service] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoaded(self)
    }
    
    func showServices(services: [Service]) {
        self.services = services
    }
}
