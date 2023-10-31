//
//  AddTaskViewController.swift
//  EndOfQuater
//
//  Created by Alexia on 10/12/23.
//

import UIKit

class AddTaskViewController: UIViewController {
    
    
    @IBOutlet weak var textArea: UITextField!
    
    @IBOutlet weak var taskTextArea: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(tasks)
    }
    
    
//    if tasks >= 8 {
//        taskTextArea.text = String("No more tasks can be added")
//    } else if tasks < 8 {
//        taskTextArea.text = String(" you can still add ")
//    }
    
    
    
    @IBAction func newTasks(_ sender: Any) {
        if let aNewTask = textArea.text {
            if tasks.count < 12 {
                tasks.append(aNewTask)
            } else {
                print ("too many tasks")
            }
            
        }
        print (tasks)
        
        if tasks.count < 12 {
            taskTextArea.text = String("youve added \(tasks.count) tasks, limit is: 12")
        } else {
            taskTextArea.text = String("you cant add anymore tasks")
        }
        
    }
    
}
//var numbers: [Int] = [10, 20, 4, 56, 2, 67, 78]
//print("Numbers before: \(numbers)")
//numbers.append(25)
//print("Numbers after: \(numbers)")
