//
//  ViewController.swift
//  ex02
//
//  Created by Kabelo MASHAO on 2019/10/09.
//  Copyright © 2019 Kabelo MASHAO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Mark: Properties
    @IBOutlet weak var displayLbl: UILabel!
    
	
	
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //Mark: Action
    
    @IBAction func buttonClick(_ sender: UIButton) {
        displayLbl.text = displayLbl.text! + String(sender.tag)
        debugPrint(String(sender.tag) + " clicked")
    }
}

