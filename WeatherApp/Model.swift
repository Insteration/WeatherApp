//
//  model.swift
//  WeatherApp
//
//  Created by Artem Karmaz on 12/15/18.
//  Copyright © 2018 Artem Karmaz. All rights reserved.
//

import Foundation
protocol CheckWeather {
    func requestWeather(_ cityName: String)
}


class GetWeather: CheckWeather {
    func requestWeather(_ cityName: String) {
        let urlString = "https://api.apixu.com/v1/current.json?key=c5d57f8a831c4dde8fd153715180512&q=\(cityName)"
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, responce, error) in
            guard let data = data else { return }
            guard error == nil else { return }
            do {
                let weather = try JSONDecoder().decode(MainLocationAndWeather.self, from: data)
                print(weather)
            } catch let error {
                print(error)
            }
            } .resume()
        
        
    }
}
