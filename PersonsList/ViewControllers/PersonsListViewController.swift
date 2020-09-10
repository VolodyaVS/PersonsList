//
//  PersonsListViewController.swift
//  PersonsList
//
//  Created by Vladimir Stepanchikov on 10.09.2020.
//  Copyright © 2020 Vladimir Stepanchikov. All rights reserved.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    let personsList = Person.createPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Hello"
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personName", for: indexPath)
        let person = personsList[indexPath.row]
        
        cell.textLabel?.text = person.name + " " + person.surname
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? DetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC.personDetails = personsList[indexPath.row]
    }
    
}
