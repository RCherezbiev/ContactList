//
//  ContactInfoViewController.swift
//  ContactList
//
//  Created by Rustam Cherezbiev on 14.12.2023.
//

import UIKit

final class DetailsViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "\(person.firstName) \(person.lastName)"
        phoneNumberLabel.text = person.phoneNumber
        emailLabel.text = person.email
    }
}
