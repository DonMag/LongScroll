//
//  ViewController.swift
//  LongScroll
//
//  Created by Don Mag on 9/7/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	let labelOne: UILabel = {
		let label = UILabel()
		label.text = "Scroll Top Left"
		label.backgroundColor = .cyan
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	let labelTwo: UILabel = {
		let label = UILabel()
		label.text = "Scroll Top Right"
		label.backgroundColor = .cyan
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	let labelThree: UILabel = {
		let label = UILabel()
		label.text = "Scroll Bottom Right"
		label.backgroundColor = .cyan
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	let labelFour: UILabel = {
		let label = UILabel()
		label.text = "Scroll Bottom Left"
		label.backgroundColor = .cyan
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	let scrollView: UIScrollView = {
		let v = UIScrollView()
		v.translatesAutoresizingMaskIntoConstraints = false
		v.backgroundColor = .yellow
		return v
	}()
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// add the scroll view to self.view
		self.view.addSubview(scrollView)
		
		// constrain the scroll view to 8-pts on each side
		scrollView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8.0).isActive = true
		scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 8.0).isActive = true
		scrollView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8.0).isActive = true
		scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -8.0).isActive = true
		
		// add all four labels to the scroll view
		scrollView.addSubview(labelOne)
		scrollView.addSubview(labelTwo)
		scrollView.addSubview(labelThree)
		scrollView.addSubview(labelFour)
		
		
		
		// "pin" labelOne (Top Left) at 16-pts from the left, 16-pts from the top
		// this also defines the left & top of the scroll content
		labelOne.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16.0).isActive = true
		labelOne.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 16.0).isActive = true
		
		
		// pin labelTwo (Top Right) at 2000-pts from the left, 16-pts from the top
		labelTwo.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 2000.0).isActive = true
		labelTwo.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 16.0).isActive = true

		
		// pin labelThree (Bottom Right) at 2000-pts from the left, 4000-pts from the top
		labelThree.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 2000.0).isActive = true
		labelThree.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 4000.0).isActive = true
		
		
		// pin labelFour (Bottom Left) at 16-pts from the left, 4000-pts from the top
		labelFour.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16.0).isActive = true
		labelFour.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 4000.0).isActive = true
		
		

		// "pin" labelThree to right & bottom with 16-pts padding
		// this defines the width and height of the scroll content
		labelThree.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: -16.0).isActive = true
		labelThree.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -16.0).isActive = true
		
	}
	
}

