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
    
    //MARK: TableView Methods
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Country") as? CountryTableViewCell else {
            fatalError("Can't dequeue reusable cell")
        }
        
        let country = countries[indexPath.row]
        cell.countryImage.image = UIImage(named: country.name.lowercased())
        cell.countryLabel.text = country.name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let detailVC = storyboard?.instantiateViewController(identifier: "DetailViewController") as? DetailViewController else {
            print("Can't instantiate view controller")
            return
        }
        
        let country = countries[indexPath.row]
        detailVC.countryName = country.name
        detailVC.capital = country.capital
        detailVC.population = country.population

        navigationController?.pushViewController(detailVC, animated: true)
    }
    
    
    //MARK: Load JSON
    
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

