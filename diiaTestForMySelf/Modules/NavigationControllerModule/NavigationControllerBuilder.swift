//
//  NavigationControllerBuilder.swift
//  diiaTestForMySelf
//
//  Created by Клоун on 28.09.2022.
//

import UIKit

typealias NavigationFactory = (UIViewController) -> (UINavigationController)

class NavigationControllerBuilder {
    static func build(rootView: UIViewController) -> UINavigationController {
        let navigationController = UINavigationController(rootViewController: rootView)
        
        let bounds = navigationController.navigationBar.frame
        navigationController.navigationBar.frame = CGRect(x: 0, y: 0, width: bounds.width, height: 100)
        navigationController.navigationBar.backgroundColor = .red
        
        addLogo(rootView)
        return navigationController
    }
    
    private static func addLogo(_ viewController: UIViewController) {
        let uiImageLogo = UIImageView.init(image: UIImage(named: "DiiaLogo"))
        let logoItem = UIBarButtonItem(customView: uiImageLogo)
        viewController.navigationItem.leftBarButtonItem = logoItem
    }
}

extension UINavigationBar {
    open override func sizeThatFits(_ size: CGSize) -> CGSize {
        CGSize(width: UIScreen.main.bounds.width, height: 100)
    }
}
