//
//  ViewController.swift
//  TodoList
//
//  Created by Eric  on 5/9/19.
//  Copyright © 2019 Eric Stein. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    
    let itemArray = ["Call Sayohann", "Learn code", "Get Stronger"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
//    TableView Datasource Methods

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProtoCells", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
//    TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(itemArray[indexPath.row])
//        print(itemArray[indexPath.row])
        
        

////        add a checkMark after selecting the row
//        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        
        
//        add a checkMark after selecting the row and ....
//        remove the checkMark after selecting the row again
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        
    }
    
}

}
