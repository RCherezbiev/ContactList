//
//  Person.swift
//  ContactList
//
//  Created by Rustam Cherezbiev on 13.12.2023.
//

struct Person {
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let email: String
    
    static func createRandomContactList() -> [Person] {
        var contacts: [Person] = []
        
        for _ in 0...10 {
            let newContact = Person(
                firstName: DataStore().firstNames.randomElement() ?? "",
                lastName: DataStore().lastNames.randomElement() ?? "",
                phoneNumber: DataStore().phoneNumbers.randomElement() ?? "",
                email: DataStore().emails.randomElement() ?? ""
            )
            contacts.append(newContact)
        }
        return contacts
    }
}
