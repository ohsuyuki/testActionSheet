//
//  ViewController.swift
//  testActionSheet
//
//  Created by osu on 2018/05/15.
//  Copyright © 2018 osu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var floor: Int = 0
    @IBAction func tapButton(_ sender: Any) {
        let actionController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)

        let action = UIAlertAction(title: "21F", style: .default) { action in self.floor = 21 }
        actionController.addAction(action)

        for i in stride(from: 7, through: 1, by: -1) {
            let action = UIAlertAction(title: "\(i)F", style: .default) { action in self.floor = i }
            actionController.addAction(action)
        }

        let cancelAction = UIAlertAction(title: "cancel", style: .cancel) { action in /* nothing to do */ }
        actionController.addAction(cancelAction)
        
        present(actionController, animated: true, completion: nil)
    }
    
}

