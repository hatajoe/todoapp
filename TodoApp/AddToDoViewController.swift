//
//  AddToDoViewController.swift
//  TodoApp
//
//  Created by Yusuke Hatanaka on 6/3/15.
//  Copyright (c) 2015 Yusuke Hatanaka. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    @IBOutlet weak var doneButton: UIBarButtonItem!
    @IBOutlet weak var textField: UITextField!

    var toDoItem: ToDoItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if sender as? NSObject != self.doneButton{
            return
        }
        if self.textField.text.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) > 0 {
            self.toDoItem = ToDoItem(name: self.textField.text)
        }
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
}

