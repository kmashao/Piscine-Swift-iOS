//
//  ViewController.swift
//  FoodTracker
//
//  Created by Kabelo MASHAO on 2019/10/08.
//  Copyright © 2019 Kabelo MASHAO. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
	override func viewDidLoad() {
        super.viewDidLoad()
        // Handle text field's user input through delegate callbacks.
		/*The self refers to the ViewController class, because
		**it’s referenced inside the scope of the ViewController class definition.*/
		nameTextField.delegate = self
    }
	//Mark: UITextFieldDelegate
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		//Hide the keyboard
		textField.resignFirstResponder()
		return true
	}
	
	func textFieldDidEndEditing(_ textField: UITextField) {
		mealNameLabel.text = textField.text
		textField.text = ""
	}
	
    //Mark: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        
        mealNameLabel.text = "Default Text"
    }
    
}

