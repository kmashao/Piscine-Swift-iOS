//
//  ViewController.swift
//  MakeSomeCode
//
//  Created by Kabelo MASHAO on 2019/10/09.
//  Copyright © 2019 Kabelo MASHAO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Mark: Properties
    @IBOutlet weak var displayLbl: UILabel!
    var result: Int = 0;
    var inputValue: String = "";
    var currentOp: String = "";
    var leftOp: Int? = 0;
    var rightOp: Int? = 0;
    
	
	
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //Mark: Action
    
    @IBAction func buttonClick(_ sender: UIButton) {
        displayLbl.text = displayLbl.text! + String(sender.tag)
        debugPrint(String(sender.tag) + " clicked")
        inputValue += String(sender.tag)
    }
    
    @IBAction func acBtn(_ sender: UIButton) {
        displayLbl.text = "|";
        inputValue = "";
        result = 0;
        leftOp = 0;
        rightOp = 0;
        print("Pressed AC");
    }
    
    @IBAction func subtractBtn(_ sender: UIButton) {
        if (inputValue.isEmpty) {
           result = 0;
           leftOp = 0;
        }
        else {
            leftOp = Int(inputValue);
            inputValue = "";
            currentOp = "sub";
        }
        debugPrint("Pressed -");
    }
    
    
    @IBAction func multiplyBtn(_ sender: UIButton) {
        if (inputValue.isEmpty) {
            result = 0;
        }
        else {
            leftOp = Int(inputValue);
            inputValue = "";
            currentOp = "multi";
        }
        print("Pressed X");
    }
    
    @IBAction func additionBtn(_ sender: Any) {
        if (inputValue.isEmpty) {
            result = 0;
        }
        else {
            leftOp = Int(inputValue);
            inputValue = "";
            currentOp = "add";
        }
        debugPrint("Pressed +");
    }
    
    @IBAction func divideBtn(_ sender: UIButton) {
        if (inputValue.isEmpty) {
            result = 0;
        }
        else {
            leftOp = Int(inputValue);
            inputValue = "";
            currentOp = "div";
        }
        print("Pressed /");
    }
    
    @IBAction func equalBtn(_ sender: UIButton) {
        if (inputValue.isEmpty) {
                   displayLbl.text = String(leftOp!);
               }
               else {
                   rightOp = Int(inputValue);
                   if (currentOp == "add") {
                       result = leftOp! + rightOp!;
                   }
                   else if (currentOp == "sub") {
                       result = leftOp! - rightOp!
                   }
                   else if (currentOp == "div") {
                      if (rightOp == 0) {
                          displayLbl.text = "Invalid operation: division by zero";
                          return;
                      }
                       result = leftOp! / rightOp!
                   }
                   else if (currentOp == "multi") {
                       result = leftOp! * rightOp!
                   }
                   displayLbl.text = String(result);
                  inputValue = String(result);
                }
            }
    
}

