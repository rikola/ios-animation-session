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
		carImage.transform = CGAffineTransformMakeRotation(CGFloat(M_PI_2))
	}
	
	
	@IBAction func upButtonDidPress(sender: UIButton) {
		UIView.animateWithDuration(1.0, animations: {
			self.carImage.center.y -= 50.0
		})
	}
	
	@IBAction func downButtonDidPress(sender: UIButton) {
		UIView.animateWithDuration(1.0, animations: {
			self.carImage.center.y += 50.0
		})
	}
	
	@IBAction func rightButtonDidPress(sender: UIButton) {
		UIView.animateWithDuration(1.0, animations: {
			self.carImage.center.x += 50.0
		})
	}
	
	@IBAction func leftButtonDidPress(sender: UIButton) {
		UIView.animateWithDuration(1.0, animations: {
			self.carImage.center.x -= 50.0
		})
	}
	
	@IBAction func turnLeftDidPress(sender: UIButton) {
		toggleVertical()
		UIView.animateWithDuration(1.0, animations: {
			let currentTransform = self.carImage.transform
			self.carImage.transform = CGAffineTransformRotate(currentTransform, CGFloat(-M_PI_2))
		})
	}
	
	@IBAction func turnRightDidPress(sender: UIButton) {
		toggleVertical()
		UIView.animateWithDuration(1.0, animations: {
			let currentTransform = self.carImage.transform
			self.carImage.transform = CGAffineTransformRotate(currentTransform, CGFloat(M_PI_2))
		})
	}
	
	
	func toggleVertical() {
		isVertical = !isVertical
		upButton.enabled = !upButton.enabled
		downButton.enabled = !downButton.enabled
		leftButton.enabled = !leftButton.enabled
		rightButton.enabled = !rightButton.enabled
	}
	
	
}

