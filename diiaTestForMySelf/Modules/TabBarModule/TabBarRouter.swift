//
//  TabBarRouter.swift
//  diiaTestForMySelf
//
//  Created by Клоун on 25.09.2022.
//

import UIKit

class TabBarRouter {
    typealias Submodules = (
        documents: UIViewController,
        services: UIViewController
    )
}

extension TabBarRouter {
    static func tabs(usingSubmodules submodules: Submodules) -> Tabs {
        let documentTabBarItem = UITabBarItem(title: "Документи", image: UIImage(systemName: "doc.plaintext.fill"), tag: 10)
        
        let serviceTabBarItem = UITabBarItem(title: "Послуги", image: UIImage(systemName: "bolt.square"), tag: 11)
        
        submodules.documents.tabBarItem = documentTabBarItem
        submodules.services.tabBarItem = serviceTabBarItem
        
        return (
            documents: submodules.documents,
            services: submodules.services
        )
    }
}
