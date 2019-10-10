//
//  ViewController.swift
//  ex01
//
//  Created by Kabelo MASHAO on 2019/10/09.
//  Copyright © 2019 Kabelo MASHAO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Mark: Properties
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //Mark: Action
    @IBAction func changeLabelbtn(_ sender: Any) {
        textLabel.text = "Hello World !"
    }
}

