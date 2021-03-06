//
//  ViewController.swift
//  App-Swoosh
//
//  Created by Doug Heaton on 1/6/18.
//  Copyright © 2018 Trusted Tiger LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var swoosh: UIImageView!
	@IBOutlet weak var bgImage: UIImageView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		swoosh.frame = CGRect(x: view.frame.size.width / 2 - swoosh.frame.size.width / 2, y: 50, width: swoosh.frame.size.width, height: swoosh.frame.size.height)
		bgImage.frame = view.frame
		
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

