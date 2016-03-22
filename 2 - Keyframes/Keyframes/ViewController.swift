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
		
		UIView.animateKeyframesWithDuration(2.0, delay: 0.0, options: [], animations: {
			//add keyframes
			
			UIView.addKeyframeWithRelativeStartTime(0.0, relativeDuration: 0.25, animations: {
				self.planeImage.center.x += 80.0
				self.planeImage.center.y -= 10.0
			})
			
			UIView.addKeyframeWithRelativeStartTime(0.1, relativeDuration: 0.4) {
				self.planeImage.transform = CGAffineTransformMakeRotation(CGFloat(-M_PI_4))
			}
			
			UIView.addKeyframeWithRelativeStartTime(0.25, relativeDuration: 0.25) {
				self.planeImage.center.x += 100.0
				self.planeImage.center.y -= 50.0
				self.planeImage.alpha = 0.0
			}
			
			UIView.addKeyframeWithRelativeStartTime(0.51, relativeDuration: 0.01) {
				self.planeImage.transform = CGAffineTransformIdentity
				self.planeImage.center = CGPoint(x: 0.0, y: originalCenter.y)
			}
			
			UIView.addKeyframeWithRelativeStartTime(0.55, relativeDuration: 0.45) {
				self.planeImage.alpha = 1.0
				self.planeImage.center = originalCenter
			}
			
			}, completion: nil)
	}
}

