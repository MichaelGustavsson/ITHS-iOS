//
//  ValuationManager.swift
//  SecureApiCall
//
//  Created by Michael Gustavsson on 2021-02-24.
//

import Foundation

protocol ValuedVehicleDelegate {
    func valuedVehicleDidFetch(_ valuationManager: ValuationManager, vehicle: VehicleModel)
}

/*
 HTTP VERB:
 GET
 POST
 DELETE
 PATCH
 PUT
 */
struct ValuationManager {
    private let _url = ""
    private let _baseUrl = ""
    
    var delegate: ValuedVehicleDelegate?
    
    func fetchValuation(){
        getRequest(urlString: _url)
    }
    
    func save(vehicle: VehicleModel){
        postRequest(vehicle: vehicle)
    }
    
    private func getRequest(urlString: String){
        
        guard var request = createRequest() else { return }
        
        request.httpMethod = "GET"
        
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: request){ (data, response, error) in
            if error != nil {
                print(error!)
            }
            
            if let response = data {
                if let vehicle = self.parseJson(data: response){
                    print(vehicle)
                    self.delegate?.valuedVehicleDidFetch(self, vehicle: vehicle)
                }
            }
        }
        
        task.resume()
    }
    
    private func postRequest(vehicle: VehicleModel){
        guard var request = createRequest() else { return }
        guard let body = try? JSONEncoder().encode(vehicle) else { return }
        
        //Set up the HTTP Headers for post request...
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        //Might need this too...
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        request.httpMethod = "POST"
        request.httpBody = body
        
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: request) {(data, response, error) in
            if error != nil {
                print(error!)
            }
            
            //Do some logic to check if the post was successful...
            //Status code 201
        }
        
//        task.resume()
    }
    
    private func createRequest() -> URLRequest? {
        guard let url = URL(string: _url) else { return nil }
        
        var request = URLRequest(url: url)
        
        request.addValue("bearer \(getToken())", forHTTPHeaderField: "Authorization")
        
        return request
    }
    
    private func parseJson(data: Data) -> VehicleModel? {
        let decoder = JSONDecoder()
        
        do {
            let decodedData = try decoder.decode(ValuationData.self, from: data)
            
            let make = decodedData.valuedVehicles[0].make
            let model = decodedData.valuedVehicles[0].model
            let modelYear = decodedData.valuedVehicles[0].modelYear
            let regNo = decodedData.valuedVehicles[0].registrationNumber
            
            let vehicle = VehicleModel(make: make, model: model, modelYear: modelYear, registrationNumber: regNo)
            
            return vehicle
        }catch {
            print(error)
            return nil
        }
    }
    
    private func getToken() -> String {
        return ""
    }
}
