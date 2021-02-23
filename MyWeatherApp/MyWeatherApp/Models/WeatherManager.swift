//
//  WeatherManager.swift
//  MyWeatherApp
//
//  Created by Michael Gustavsson on 2021-02-23.
//

import Foundation

protocol WeatherManagerDelegate {
    func weatherDidUpdate(_ weatherManager: WeatherManager, weather: WeatherModel)
}

struct WeatherManager{
    let url = "https://api.openweathermap.org/data/2.5/weather?&appid=bd1437c53b15df8bd7e809ef8391d83d&units=metric"
    
    var delegate: WeatherManagerDelegate?
    
    func getWeather(city: String){
        let urlString = "\(url)&q=\(city)"
        request(urlString: urlString)
    }
    
    func request(urlString: String){
        //1. Create url(URL)
        if let url = URL(string: urlString) {
            //2. Create the URLSession
            let session = URLSession(configuration: .default)
            //3. Create session task
            let task = session.dataTask(with: url){(data, response, error) in
                if(error != nil) {
                    print(error!)
                    return
                }
                
                if let response = data {
                    if let weather = self.parseJson(data: response) {
                        //Use delegate...
                        self.delegate?.weatherDidUpdate(self, weather: weather)
                    }
                }
            }
            //4. Start the task
            task.resume()
        }
    }
    
    func parseJson(data: Data) -> WeatherModel? {
        let decoder = JSONDecoder()
        
        do{
            let decodedData = try decoder.decode(WeatherData.self, from: data)
            let temp = decodedData.main.temp
            let city = decodedData.name
            let id = decodedData.weather[0].id
            
            let weather = WeatherModel(conditionId: id, city: city, temperature: temp)
            return weather
        }catch {
            print(error)
            return nil
        }
    }
}
