//
//  Animation.swift
//  AnimationApp
//
//  Created by Андрей on 05.08.2022.
//

struct Animation {
	
	let preset: String
	let curve: String
	let force: Double
	let duration: Double
	let delay: Double
	
	static func randomAnimation() -> Animation {
		Animation(
			preset: DataStore.shared.presets.randomElement() ?? "pop",
			curve: DataStore.shared.curves.randomElement() ?? "easeIn",
			force: Double.random(in: 0...5.0),
			duration: Double.random(in: 0.5...2.0),
			delay: Double.random(in: 0...1.0)
		)
	}
	
}

extension Animation: CustomStringConvertible {
	
	var description: String {
		"""
		preset: \(preset)
		curve: \(curve)
		force: \(String(format: "%.2f", force))
		duration: \(String(format: "%.2f", duration))
		delay: \(String(format: "%.2f", delay))
		"""
	}
	
}
