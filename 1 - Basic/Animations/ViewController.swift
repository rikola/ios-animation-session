//
//  ViewController.swift
//  Animations
//
//  Created by Eric Koehler  on 2/23/16.
//  Copyright © 2016 Eric Koehler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var carImage: UIImageView!
	
	@IBOutlet weak var upButton: UIButton!
	@IBOutlet weak var downButton: UIButton!
	@IBOutlet weak var leftButton: UIButton!
	@IBOutlet weak var rightButton: UIButton!
	
	var isVertical = true
	
	// Put all your initial view configuration logic in here
	override func viewDidLoad() {
		super.viewDidLoad()
		// Insert code here
	}
	
	
	@IBAction func upButtonDidPress(sender: UIButton) {
		// Insert code here
	}
	
	@IBAction func downButtonDidPress(sender: UIButton) {
		// Insert code here
	}
	
	@IBAction func rightButtonDidPress(sender: UIButton) {
		// Insert code here
	}
	
	@IBAction func leftButtonDidPress(sender: UIButton) {
		// Insert code here
	}
	
	@IBAction func turnLeftDidPress(sender: UIButton) {
		toggleVertical()
		// Insert code here
	}
	
	@IBAction func turnRightDidPress(sender: UIButton) {
		toggleVertical()
		// Insert code here
	}
	
	
	func toggleVertical() {
		isVertical = !isVertical
		upButton.enabled = !upButton.enabled
		downButton.enabled = !downButton.enabled
		leftButton.enabled = !leftButton.enabled
		rightButton.enabled = !rightButton.enabled
	}
}

