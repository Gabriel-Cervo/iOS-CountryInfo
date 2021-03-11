//
//  DetailViewController.swift
//  CountryInfo
//
//  Created by Joao Gabriel Dourado Cervo on 11/03/21.
//

import UIKit

class DetailViewController: UIViewController {
    var countryName: String?
    var capital: String?
    var population: String?

    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        
        let countryImageView = UIImageView(image: UIImage(named: countryName!.lowercased()))
        countryImageView.translatesAutoresizingMaskIntoConstraints = false
        countryImageView.frame = CGRect(x: 0, y: 0, width: 450, height: 225)
        view.addSubview(countryImageView)
        
        let countryNameLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 20, height: 8))
        countryNameLabel.translatesAutoresizingMaskIntoConstraints = false
        countryNameLabel.text = countryName!
        countryNameLabel.font = .systemFont(ofSize: 24, weight: .bold)
        view.addSubview(countryNameLabel)
        
        let capitalLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 20, height: 8))
        capitalLabel.translatesAutoresizingMaskIntoConstraints = false
        capitalLabel.text = "Capital: \(capital!)"
        capitalLabel.font = .systemFont(ofSize: 16)
        view.addSubview(capitalLabel)
        
        let populationLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 20, height: 8))
        populationLabel.translatesAutoresizingMaskIntoConstraints = false
        populationLabel.text = "Population: \(population!)"
        populationLabel.font = .systemFont(ofSize: 16)
        view.addSubview(populationLabel)
        
        NSLayoutConstraint.activate([
            countryImageView.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            countryImageView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 70),
            countryImageView.widthAnchor.constraint(lessThanOrEqualToConstant: 450),
            countryImageView.heightAnchor.constraint(lessThanOrEqualToConstant: 225),
            
            countryNameLabel.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            countryNameLabel.topAnchor.constraint(equalTo: countryImageView.bottomAnchor, constant: 15),
            
            capitalLabel.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            capitalLabel.topAnchor.constraint(equalTo: countryNameLabel.bottomAnchor, constant: 10),
            
            populationLabel.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            populationLabel.topAnchor.constraint(equalTo: capitalLabel.bottomAnchor),
        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
