//
//  DataStore.swift
//  AnimationApp
//
//  Created by Андрей on 05.08.2022.
//

class DataStore {
	
	static let shared = DataStore()
	
	private init() {}
	
	let presets = [
		"pop",
		"slideLeft",
		"slideRight",
		"slideDown",
		"slideUp",
		"squeezeLeft",
		"squeezeRight",
		"squeezeDown",
		"squeezeUp",
		"fadeIn",
		"fadeOut",
		"fadeOutIn",
		"fadeInLeft",
		"fadeInRight",
		"fadeInDown",
		"fadeInUp",
		"zoomIn",
		"zoomOut",
		"fall",
		"shake",
		"flipX",
		"flipY",
		"morph",
		"squeeze",
		"flash",
		"wobble",
		"swing"
	]
	
	let curves = [
		"easeIn",
		"easeOut",
		"easeInOut",
		"linear",
		"spring",
		"easeInSine",
		"easeOutSine",
		"easeInOutSine",
		"easeInQuad",
		"easeOutQuad",
		"easeInOutQuad",
		"easeInCubic",
		"easeOutCubic",
		"easeInOutCubic",
		"easeInQuart",
		"easeOutQuart",
		"easeInOutQuart",
		"easeInQuint",
		"easeOutQuint",
		"easeInOutQuint",
		"easeInExpo",
		"easeOutExpo",
		"easeInOutExpo",
		"easeInCirc",
		"easeOutCirc",
		"easeInOutCirc",
		"easeInBack",
		"easeOutBack",
		"easeInOutBack"
	]
	
}
