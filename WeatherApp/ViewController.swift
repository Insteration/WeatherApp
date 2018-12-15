//
//  ViewController.swift
//  WeatherApp
//
//  Created by Artem Karmaz on 12/15/18.
//  Copyright © 2018 Artem Karmaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var str = ""

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        textLabel.text = str
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

