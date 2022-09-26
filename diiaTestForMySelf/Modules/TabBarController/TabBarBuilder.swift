//
//  TabBarBuilder.swift
//  diiaTestForMySelf
//
//  Created by Клоун on 25.09.2022.
//

import UIKit

class TabBarBuilder {
    static func build(usingSubmodules submodules: TabBarRouter.Submodules) -> UITabBarController {
        let tabs = TabBarRouter.tabs(usingSubmodules: submodules)
        let tabBarController = TabBarController(tabs: tabs)
        return tabBarController
    }
}
