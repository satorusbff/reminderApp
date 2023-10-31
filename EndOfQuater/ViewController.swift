//
//  ViewController.swift
//  EndOfQuater
//
//  Created by Alexia on 10/11/23.
//

import UIKit

var tasks = ["welcome!"]

class ViewController: UIViewController {
    
    @IBOutlet var textArea: [UITextField]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        loadTasks()
    }
    func loadTasks () {
        for i in 0..<tasks.count {
            textArea[i].text = tasks[i]
        }
    }
    func resetTasks (){
        for i in 1...11{
            textArea [i].text = ""
        
        }
    }
    

    @IBAction func finishedTapped(_ sender: UIButton) {
        //myArray.removeAll()
        tasks.removeAll()
        resetTasks()
        performSegue(withIdentifier: "goComplete", sender: nil)
    }
}

