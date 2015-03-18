//
//  ToDoItem.swift
//  Nocturne
//
//  Created by Lucas on 3/18/15.
//  Copyright (c) 2015 AWLKA. All rights reserved.
//

import UIKit

class ToDoItem: NSObject {
    var text: String
    var completed: Bool

    init(text: String) {
        self.text = text
        self.completed = false
    }
}
