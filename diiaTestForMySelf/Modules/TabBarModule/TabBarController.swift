//
//  TabBarController.swift
//  diiaTestForMySelf
//
//  Created by Клоун on 25.09.2022.
//

import UIKit

typealias Tabs = (
    documents: UIViewController,
    services: UIViewController
)

class TabBarController: UITabBarController {
    init(tabs: Tabs) {
        super.init(nibName: nil, bundle: nil)
        viewControllers = [tabs.documents, tabs.services]
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
