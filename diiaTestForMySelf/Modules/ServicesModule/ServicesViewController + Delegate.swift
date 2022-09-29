//
//  ServicesViewController + Delegate.swift
//  diiaTestForMySelf
//
//  Created by Клоун on 28.09.2022.
//

import UIKit

extension ServicesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        services.count
    }
}
