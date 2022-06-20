//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var citySearch: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        citySearch.delegate = self
       
    }
   
   

    @IBAction func search(_ sender: UIButton) {
        print(getSearchInput())
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
         print(getSearchInput())
        return true
    }
    
    func getSearchInput() -> String {
        citySearch.endEditing(true)
        let cityInput = citySearch.text ?? "N/A"
        return cityInput
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        citySearch.text = ""
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        } else {
            textField.placeholder = "Type something Deng!"
            return false
        }
    }
    
}

