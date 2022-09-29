//
//  ServicesViewController + DataSource.swift
//  diiaTestForMySelf
//
//  Created by Клоун on 28.09.2022.
//

import UIKit

extension ServicesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = servicesTableView.dequeueReusableCell(withIdentifier: ServiceTableViewCell.identifier, for: indexPath) as! ServiceTableViewCell
        let service = services[indexPath.row]
        cell.configureCell(service)
        return cell
    }
}
