//
//  ViewController.swift
//  ContactList
//
//  Created by Rustam Cherezbiev on 13.12.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    let persons = Person.createRandomContactList()
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let personListVC = segue.destination as? DetailsViewController
        personListVC?.person = persons[indexPath.row]
    }
}

// MARK: - UITableViewDataSource
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = "\(person.firstName) \(person.lastName)"
        cell.contentConfiguration = content
        return cell
    }
}


