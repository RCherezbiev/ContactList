//
//  ViewController.swift
//  ContactList
//
//  Created by Rustam Cherezbiev on 13.12.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {

    private let contactList = DataStore.createRandomContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let person = contactList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = "\(person.firstName) \(person.lastName)"
        cell.contentConfiguration = content
        return cell
    }
}

