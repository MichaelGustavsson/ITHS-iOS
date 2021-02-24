//
//  ValuationData.swift
//  SecureApiCall
//
//  Created by Michael Gustavsson on 2021-02-24.
//

import Foundation

struct ValuationData: Decodable {
    let valuedVehicles: [ValuedVehicles]
}

struct ValuedVehicles: Decodable {
    let make: String
    let model: String
    let modelYear: String
    let registrationNumber: String
}
