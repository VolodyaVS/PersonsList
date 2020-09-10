//
//  Person.swift
//  PersonsList
//
//  Created by Vladimir Stepanchikov on 10.09.2020.
//  Copyright © 2020 Vladimir Stepanchikov. All rights reserved.
//

struct Person {
    
    let name: String
    let surname: String
    let phone: String
    let email: String
    
}

extension Person {
    
    static func createPersonList() -> [Person] {
        
        var personsList: [Person] = []
        
        let data = DataManager()
        
        let randomNames = data.names.shuffled()
        let randomSurnames = data.surnames.shuffled()
        let randomPhones = data.phones.shuffled()
        let randomEmails = data.emails.shuffled()
        
        for index in 0..<randomNames.count{
            let person = Person(name: randomNames[index],
                                surname: randomSurnames[index],
                                phone: randomPhones[index],
                                email: randomEmails[index])
            personsList.append(person)
        }
        return personsList
    }

}
