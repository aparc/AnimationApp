//
//  AnimationViewController.swift
//  AnimationApp
//
//  Created by Андрей on 05.08.2022.
//

import UIKit
import SpringAnimation

class AnimationViewController: UIViewController {

	// MARK: - IB Outlets
	@IBOutlet var animatableView: SpringView!
	@IBOutlet var animationAttributesLabel: UILabel!
	
	// MARK: - Private Properties
	private var nextAnimation = Animation.randomAnimation()
	
	// MARK: - Life Cycle Methods
	override func viewDidLoad() {
		super.viewDidLoad()
		updateAnimationlabel()
	}

	// MARK: - IB Actions
	@IBAction func runButtonPressed(_ sender: UIButton) {
		animateView()
		updateAnimationlabel()
		nextAnimation = Animation.randomAnimation()
		sender.setTitle("Run \(nextAnimation.preset)", for: .normal)
	}
	
	// MARK: - Private Methods
	private func animateView() {
		animatableView.animation = nextAnimation.preset
		animatableView.curve = nextAnimation.curve
		animatableView.force = nextAnimation.force
		animatableView.duration = nextAnimation.duration
		animatableView.delay = nextAnimation.delay
		
		animatableView.animate()
	}
	
	private func updateAnimationlabel() {
		animationAttributesLabel.text = nextAnimation.description
	}
	
}
