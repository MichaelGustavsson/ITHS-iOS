//
//  ViewController.swift
//  SecureApiCall
//
//  Created by Michael Gustavsson on 2021-02-24.
//

import UIKit

class ViewController: UIViewController, ValuedVehicleDelegate {
    
    @IBOutlet weak var makelabel: UILabel!
    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var regNoLabel: UILabel!
    @IBOutlet weak var modelYearLabel: UILabel!
    
    var valuationMgr = ValuationManager()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        valuationMgr.delegate = self
        valuationMgr.fetchValuation()
        
        
    }

    func valuedVehicleDidFetch(_ valuationManager: ValuationManager, vehicle: VehicleModel) {
        DispatchQueue.main.async {
            self.makelabel.text = vehicle.make
            self.modelLabel.text = vehicle.model
            self.modelYearLabel.text = vehicle.modelYear
            self.regNoLabel.text = vehicle.registrationNumber
        }
    }
    
    
    @IBAction func saveButton(_ sender: UIButton) {
        
        let vehicle = VehicleModel(make: "Kia", model: "Ceed", modelYear: "2017", registrationNumber: "ABC123")
        
        valuationMgr.save(vehicle: vehicle)
        
    }
}

