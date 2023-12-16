//
//  PersonListViewController.swift
//  ContactList
//
//  Created by Rustam Cherezbiev on 14.12.2023.
//

import UIKit

final class PersonListViewController: UITableViewController {
    let persons = Person.createRandomContactList()

}

// MARK: - UITableViewDataSource
extension PersonListViewController {
   
    // Return the number of rows for the table.
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
            persons.count
        }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "\(persons[section].firstName) \(persons[section].lastName)"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "personlist", for: indexPath)
            
            let person = persons[indexPath.section]
            var content = cell.defaultContentConfiguration()
            
            switch indexPath.row {
            case 0:
                content.text = person.phoneNumber
                content.image = UIImage(systemName: "phone")
            default:
                content.text = person.email
                content.image = UIImage(systemName: "tray")
            }
            
            cell.contentConfiguration = content
            
            return cell
        }
}
