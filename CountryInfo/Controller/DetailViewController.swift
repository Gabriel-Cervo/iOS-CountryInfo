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
        
        let imageView = UIImageView(image: UIImage(named: countryName!.lowercased()))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.frame = CGRect(x: 0, y: 0, width: 450, height: 225)
        view.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            imageView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 70),
            imageView.widthAnchor.constraint(lessThanOrEqualToConstant: 450),
            imageView.heightAnchor.constraint(lessThanOrEqualToConstant: 225)
        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
