//
//  Person.swift
//  ContactList
//
//  Created by Rustam Cherezbiev on 13.12.2023.
//


final class DataStore {
    
    let firstNames = ["John", "Aaron", "Tim", "Ted", "Steven"]
    let lastNames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins"]
    let phoneNumbers = [
        "+7(921)123-4567",
        "+7(925)987-6543",
        "+7(903)456-7890",
        "+7(911)111-2233",
        "+7(917)876-5432",
        "+7(929)876-5432",
        "+7(915)432-1098",
        "+7(903)222-3344",
        "+7(925)555-6677",
        "+7(911)333-4455"
    ]
    
    let emails = [
        "user1@example.com",
        "john.doe@gmail.com",
        "test.email@yahoo.com",
        "alice.smith@hotmail.com",
        "info@company.com",
        "support@example.org",
        "webmaster@site.net",
        "jane.doe@gmail.com",
        "contact@business.com",
        "admin@website.org"
    ]
    
    struct Person {
        let firstName: String
        let lastName: String
        let phoneNumber: String
        let email: String
    }

    static func createRandomContactList() -> [Person] {
        var contacts: [Person] = []
        
        for _ in 1...10 {
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

