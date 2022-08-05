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
	
	@IBOutlet var presetLabel: UILabel!
	@IBOutlet var curveLabel: UILabel!
	@IBOutlet var forceLabel: UILabel!
	@IBOutlet var durationLabel: UILabel!
	@IBOutlet var delayLabel: UILabel!
	
	// MARK: - Private Properties
	private var nextAnimation: Animation = AnimationService.shared.randomAnimation()
	
	// MARK: - Life Cycle Methods
	override func viewDidLoad() {
		super.viewDidLoad()
		updateLabels()
	}

	// MARK: - IB Actions
	@IBAction func runButtonPressed(_ sender: UIButton) {
		animateView()
		updateLabels()
		nextAnimation = AnimationService.shared.randomAnimation()
		sender.setTitle("Run \(nextAnimation.preset)", for: .normal)
	}
	
	// MARK: - Private Methods
	private func animateView() {
		animatableView.animation = nextAnimation.preset.rawValue
		animatableView.curve = nextAnimation.curve.rawValue
		animatableView.force = nextAnimation.force
		animatableView.duration = nextAnimation.duration
		animatableView.delay = nextAnimation.delay
		
		animatableView.animate()
	}
	
	private func updateLabels() {
		presetLabel.text = "preset: \(nextAnimation.preset)"
		curveLabel.text = "curve: \(nextAnimation.curve)"
		forceLabel.text = String(format: "force: %.2f", nextAnimation.force)
		durationLabel.text = String(format: "duration: %.2f", nextAnimation.duration)
		delayLabel.text = String(format: "delay: %.2f", nextAnimation.delay)
	}
	
}
