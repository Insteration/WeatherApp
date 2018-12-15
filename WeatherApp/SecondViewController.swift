//
//  SecondViewController.swift
//  WeatherApp
//
//  Created by Artem Karmaz on 12/15/18.
//  Copyright © 2018 Artem Karmaz. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    let checkWeather: CheckWeather = GetWeather()

    @IBOutlet weak var cityNameTextField: UITextField!
    @IBAction func getWeatherButton(_ sender: UIButton) {
        checkWeather.requestWeather(cityNameTextField.text!)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
