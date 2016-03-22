//
//  ViewController.swift
//  Keyframes
//
//  Created by Eric Koehler  on 3/21/16.
//  Copyright © 2016 Eric Koehler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var flyButton: UIButton!
	@IBOutlet weak var planeImage: UIImageView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		flyButton.layer.cornerRadius = 50
		flyButton.layer.shadowOpacity = 1.0
		flyButton.layer.shadowColor = UIColor.darkGrayColor().CGColor
		flyButton.layer.shadowRadius = 3
		flyButton.layer.shadowOffset = CGSize(width: 0, height: 2)
	}
	
	@IBAction func flyButtonDidPress(sender: AnyObject) {
		planeDepart()
	}
	
	func planeDepart() {
		let originalCenter = planeImage.center
		// Insert code here
	}
}

