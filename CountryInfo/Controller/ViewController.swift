//
//  ViewController.swift
//  CountryInfo
//
//  Created by Joao Gabriel Dourado Cervo on 07/03/21.
//

import UIKit

class ViewController: UITableViewController {
    var countries: [Country] = [Country]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadCountriesFromJson()
    }
    
    func loadCountriesFromJson() {
        let decoder = JSONDecoder()
        
        guard let url = Bundle.main.url(forResource: "countries", withExtension: "json") else {
            print("Can't find countries json!")
            return
        }
        
        do {
            let jsonData = try Data(contentsOf: url)
            let decodedInfo = try decoder.decode([Country].self, from: jsonData)
        
            countries = decodedInfo
        } catch {
            print("Error while deconding data:")
            print(error)
        }
    }
}

