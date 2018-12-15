//
//  MainLocationAndWeather.swift
//  WeatherApp
//
//  Created by Artem Karmaz on 12/15/18.
//  Copyright © 2018 Artem Karmaz. All rights reserved.
//

import Foundation

class MainLocationAndWeather: Codable {
    private let location: Location
    private let current: Weather
    
    init(location: Location, current: Weather) {
        self.location = location
        self.current = current
    }
}
