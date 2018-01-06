//
//  LeagueVC.swift
//  App-Swoosh
//
//  Created by Doug Heaton on 1/6/18.
//  Copyright © 2018 Trusted Tiger LLC. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
	
	var player: Player!

	@IBOutlet weak var nextButton: BorderButton!
	
	override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
	
	@IBAction func onMensTapped(_ sender: Any) {
		selectLeague(leagueType: "mens")
	}
	
	@IBAction func onWomensTapped(_ sender: Any) {
		selectLeague(leagueType: "womens")
	}
	@IBAction func onCoedTapped(_ sender: Any) {
		selectLeague(leagueType: "coed")
	}
	
	func selectLeague(leagueType: String) {
		player.desiredLeague = leagueType
		nextButton.isEnabled = true
	}

	@IBAction func onNextTapped(_ sender: Any) {
		performSegue(withIdentifier: "skillVCSegue", sender: self)
	}

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let skillVC = segue.destination as? SkillVC {
			skillVC.player = player
		}
	}

}
