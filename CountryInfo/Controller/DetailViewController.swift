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
        
        NSLayoutConstraint.activate([
            countryImageView.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            countryImageView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 70),
            countryImageView.widthAnchor.constraint(lessThanOrEqualToConstant: 450),
            countryImageView.heightAnchor.constraint(lessThanOrEqualToConstant: 225),
            
            countryNameLabel.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            countryNameLabel.topAnchor.constraint(equalTo: countryImageView.bottomAnchor, constant: 15)
        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
