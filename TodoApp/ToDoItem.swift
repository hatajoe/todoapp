//
//  ToDoItem.swift
//  TodoApp
//
//  Created by Yusuke Hatanaka on 6/3/15.
//  Copyright (c) 2015 Yusuke Hatanaka. All rights reserved.
//

import UIKit

class ToDoItem: NSObject {
    var itemName: NSString = ""
    var completed: Bool = false
    var creationDate: NSDate = NSDate()
    
    init(name:String){
        self.itemName = name
    }
}
