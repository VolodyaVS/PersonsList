//
//  DetailsViewController.swift
//  PersonsList
//
//  Created by Vladimir Stepanchikov on 10.09.2020.
//  Copyright © 2020 Vladimir Stepanchikov. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var personDetails: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "\(personDetails.name) \(personDetails.surname)"
        phoneLabel.text = personDetails.phone
        emailLabel.text = personDetails.email
    }

}
