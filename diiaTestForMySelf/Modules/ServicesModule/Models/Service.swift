//
//  Service.swift
//  diiaTestForMySelf
//
//  Created by Клоун on 27.09.2022.
//

import Foundation

struct Service {
    let serviceImage: String
    let serviceName: String
    
    static func getServices() -> [Service] {
        var services: [Service] = []
        
        let serviceImages = ServicesDataStorage.shared.serviceImages
        let serviceNames = ServicesDataStorage.shared.serviceNames
        
        let iterationCount = min(serviceNames.count, serviceImages.count)
        
        for index in 0..<iterationCount {
            let service = Service(serviceImage: serviceImages[index], serviceName: serviceNames[index])
            
            services.append(service)
        }
        return services
    }
}
