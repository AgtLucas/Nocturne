//
//  ViewController.swift
//  Nocturne
//
//  Created by Lucas on 3/18/15.
//  Copyright (c) 2015 AWLKA. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!

    var toDoItems = [ToDoItem]()

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        // Styles
        tableView.separatorStyle = .None
        tableView.rowHeight = 50.0

        if toDoItems.count > 0 {
            return
        }
        toDoItems.append(ToDoItem(text: "Read the lectures"))
        toDoItems.append(ToDoItem(text: "Rule the web"))
        toDoItems.append(ToDoItem(text: "Ask more"))
        toDoItems.append(ToDoItem(text: "Buy Apples"))
        toDoItems.append(ToDoItem(text: "Buy Potatoes"))
        toDoItems.append(ToDoItem(text: "Master Swift"))
        toDoItems.append(ToDoItem(text: "Learn Guitar"))
        toDoItems.append(ToDoItem(text: "Study for the test"))
        toDoItems.append(ToDoItem(text: "Write a blog post"))
        toDoItems.append(ToDoItem(text: "Go for a walk"))
        toDoItems.append(ToDoItem(text: "Master Objective-C"))
        toDoItems.append(ToDoItem(text: "Master JavaScript"))
        toDoItems.append(ToDoItem(text: "Master Node.js/io.js"))
        toDoItems.append(ToDoItem(text: "Rule the universe"))
        toDoItems.append(ToDoItem(text: "Travel"))
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoItems.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        let item = toDoItems[indexPath.row]

        cell.textLabel?.text = item.text
        return cell
    }


}

