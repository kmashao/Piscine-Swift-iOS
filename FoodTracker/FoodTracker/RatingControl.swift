//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Kabelo MASHAO on 2019/10/15.
//  Copyright © 2019 Kabelo MASHAO. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {
	//Mark: Initialization
	
	override init(frame: CGRect) {
		super.init(frame: frame);
		setUpButtons();
	}
	
	required init(coder: NSCoder) {
		super.init(coder: coder);
		setUpButtons();
	}
	
	//Mark: Private Methods
	
	private func setUpButtons(){
	
		//create button
		let button = UIButton();
		button.backgroundColor = UIColor.systemTeal;
		
		//add constraints
		
		//disable automatic constraint generation
		button.translatesAutoresizingMaskIntoConstraints = false;
		button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true;
		button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true;
		
		//add button to view stack
		addSubview(button);
	}
	

}
