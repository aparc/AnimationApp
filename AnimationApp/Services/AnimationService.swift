//
//  AnimationService.swift
//  AnimationApp
//
//  Created by Андрей on 05.08.2022.
//

import SpringAnimation

class AnimationService {
	
	static let shared = AnimationService()
	
	private init() {}
	
	func randomAnimation() -> Animation {
		Animation(
			preset: AnimationPreset.allCases.randomElement() ?? AnimationPreset.morph,
			curve: AnimationCurve.allCases.randomElement() ?? AnimationCurve.easeIn,
			force: Double.random(in: 0...5.0),
			duration: Double.random(in: 0.5...2.0),
			delay: Double.random(in: 0...1.0)
		)
	}
	
}
