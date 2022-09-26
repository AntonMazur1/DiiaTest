//
//  TabBarRouter.swift
//  diiaTestForMySelf
//
//  Created by Клоун on 25.09.2022.
//

import UIKit

class TabBarRouter {
//    var viewController: UIViewController
    
    typealias Submodules = (
        documents: UIViewController,
        services: UIViewController
    )
    
    init(viewController: UIViewController) {
//        self.viewController = viewController
    }
}

extension TabBarRouter {
    static func tabs(usingSubmodules submodules: Submodules) -> Tabs {
        let documentsTabBarItem = UITabBarItem(title: "Documents",
                                               image: UIImage(systemName: "list.bullet.rectangle.portrait.fill"),
                                               tag: 11)
        
        let servicesTabBarItem = UITabBarItem(title: "Services",
                                               image: UIImage(systemName: "list.bullet"),
                                               tag: 12)
        
        submodules.documents.tabBarItem = documentsTabBarItem
        submodules.services.tabBarItem = servicesTabBarItem
        
        return (
            documents: submodules.documents,
            services: submodules.services
        )
    }
}
