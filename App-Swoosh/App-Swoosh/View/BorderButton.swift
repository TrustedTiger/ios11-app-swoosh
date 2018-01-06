//
//  BorderButton.swift
//  App-Swoosh
//
//  Created by Doug Heaton on 1/6/18.
//  Copyright © 2018 Trusted Tiger LLC. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

	override func awakeFromNib() {
		super.awakeFromNib()
		layer.borderWidth = 2.0
		layer.borderColor = UIColor.white.cgColor
	}
}
