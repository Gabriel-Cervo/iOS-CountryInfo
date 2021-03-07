//
//  CountryTableViewCell.swift
//  CountryInfo
//
//  Created by Joao Gabriel Dourado Cervo on 07/03/21.
//

import UIKit

class CountryTableViewCell: UITableViewCell {
    @IBOutlet weak var countryImage: UIImageView!
    @IBOutlet weak var countryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
