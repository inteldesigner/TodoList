//
//  ViewController.swift
//  TodoList
//
//  Created by Eric  on 5/9/19.
//  Copyright © 2019 Eric Stein. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    
    var itemArray = ["Call Sayohann", "Learn code", "Get Stronger"]
    
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
        
////      add a checkMark after selecting the row
//        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        
        
//        add a checkMark after selecting the row and ....
//        remove the checkMark after selecting the row again
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
//Mark - Add New Items
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        
        var textField = UITextField()
        let alert = UIAlertController(title: " Add New TodoList Item", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add Item", style: .default) { (action) in
//        what will happend once the user clicks the Add Item Button on our UIAlert
            self.itemArray.append(textField.text!)
//            add a text in the textField
            self.tableView.reloadData()
        }
        
        
//        add a TEXTFIELD popup
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Create new item"
            textField = alertTextField
        }
    
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        }

}
