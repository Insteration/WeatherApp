//
//  Weather.swift
//  WeatherApp
//
//  Created by Artem Karmaz on 12/15/18.
//  Copyright © 2018 Artem Karmaz. All rights reserved.
//

import Foundation

class Weather: Codable {
    private let lastUpdatedEpoch: Int
    private let lastUpdated: String
    private let tempC: Int
    private let tempF: Double
    private let isDay: Int
    private let condition: Condition
    private let windMph, windKph: Double
    private let windDegree: Int
    private let windDir: String
    private let pressureMB: Int
    private let pressureIn, precipMm, precipIn: Double
    private let humidity, cloud: Int
    private let feelslikeC, feelslikeF, visKM: Double
    private let visMiles, uv: Int
    
    private enum CodingKeys: String, CodingKey {
        case lastUpdatedEpoch = "last_updated_epoch"
        case lastUpdated = "last_updated"
        case tempC = "temp_c"
        case tempF = "temp_f"
        case isDay = "is_day"
        case condition
        case windMph = "wind_mph"
        case windKph = "wind_kph"
        case windDegree = "wind_degree"
        case windDir = "wind_dir"
        case pressureMB = "pressure_mb"
        case pressureIn = "pressure_in"
        case precipMm = "precip_mm"
        case precipIn = "precip_in"
        case humidity, cloud
        case feelslikeC = "feelslike_c"
        case feelslikeF = "feelslike_f"
        case visKM = "vis_km"
        case visMiles = "vis_miles"
        case uv
    }
    
    init(lastUpdatedEpoch: Int, lastUpdated: String, tempC: Int, tempF: Double, isDay: Int, condition: Condition, windMph: Double, windKph: Double, windDegree: Int, windDir: String, pressureMB: Int, pressureIn: Double, precipMm: Double, precipIn: Double, humidity: Int, cloud: Int, feelslikeC: Double, feelslikeF: Double, visKM: Double, visMiles: Int, uv: Int) {
        self.lastUpdatedEpoch = lastUpdatedEpoch
        self.lastUpdated = lastUpdated
        self.tempC = tempC
        self.tempF = tempF
        self.isDay = isDay
        self.condition = condition
        self.windMph = windMph
        self.windKph = windKph
        self.windDegree = windDegree
        self.windDir = windDir
        self.pressureMB = pressureMB
        self.pressureIn = pressureIn
        self.precipMm = precipMm
        self.precipIn = precipIn
        self.humidity = humidity
        self.cloud = cloud
        self.feelslikeC = feelslikeC
        self.feelslikeF = feelslikeF
        self.visKM = visKM
        self.visMiles = visMiles
        self.uv = uv
    }
}

class Condition: Codable {
    let text, icon: String
    let code: Int
    
    init(text: String, icon: String, code: Int) {
        self.text = text
        self.icon = icon
        self.code = code
    }
}

