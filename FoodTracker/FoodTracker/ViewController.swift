//
//  ViewController.swift
//  FoodTracker
//
//  Created by Kabelo MASHAO on 2019/10/08.
//  Copyright © 2019 Kabelo MASHAO. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate,
UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
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
	
	//Mark: UIImagePickerController Delegate
	func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
		
		//dismiss image Picker if user cancels
		dismiss(animated: true, completion: nil)
	}
	
	//called when user selects photo
	func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
		
		//use original image as dictionary info may contain different represenatations of the image
		guard let selectedImage = info[.originalImage] as? UIImage
			else{
				fatalError("Expected a dictionary containing an image but got the following: \(info)")
			}
		
		//set photoImageView outlet to selected image
		photoImageView.image = selectedImage
		
		//dismiss image picker
		dismiss(animated: true, completion: nil)
	}
	
    //Mark: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
		debugPrint("SDT clicked")
    }
    
    @IBAction func selectImageFromLibrary(_ sender: UITapGestureRecognizer) {
        
		//hide keyboard if user clicks image while typing
        mealNameLabel.resignFirstResponder()
        debugPrint("clicked image select")
        
		//controller to pick images
        let imagePickerController = UIImagePickerController()
        
		//make sure user can only choose pictures from gallery and not take a photo
		imagePickerController.sourceType = .photoLibrary
        
		//Make sure viewController is notified when user picks image
        imagePickerController.delegate = self
		present(imagePickerController, animated: true, completion: nil)
        
    }
}

