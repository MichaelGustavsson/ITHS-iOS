//
//  ViewController.swift
//  MyWeatherApp
//
//  Created by Michael Gustavsson on 2021-02-23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, WeatherManagerDelegate {
    
    @IBOutlet weak var searchField: UITextField!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    var weatherMgr = WeatherManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchField.delegate = self
        weatherMgr.delegate = self
    }

    @IBAction func searchButton(_ sender: UIButton) {
        weatherMgr.getWeather(city: searchField.text!)
    }
    
    func weatherDidUpdate(_ weatherManager: WeatherManager, weather: WeatherModel) {
        DispatchQueue.main.async {
            self.temperatureLabel.text = weather.temperatureString
            self.weatherImage.image = UIImage(systemName: weather.conditionName)
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchField.endEditing(true)
        print(searchField.text!)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        } else {
            textField.placeholder = "Du glömde att skriva här!"
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let city = searchField.text {
            weatherMgr.getWeather(city: city)
        }
        
        textField.text = ""
    }
}

