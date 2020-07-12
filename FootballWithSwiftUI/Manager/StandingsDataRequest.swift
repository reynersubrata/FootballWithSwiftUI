//
//  StandingSModel.swift
//  FootballWithSwiftUI
//
//  Created by Reyner Subrata on 07/07/20.
//  Copyright © 2020 Reyner Subrata. All rights reserved.
//

import Foundation
import SwiftyJSON

class StandingsModel: ObservableObject {
	
	@Published var standingsData: standingsData = testStandingsData
	
	init(clubName: String = "", points: Int = 0) {
		 
		getFootballStandingsData()
	}
	
	func getFootballStandingsData() {
		guard let result = data else {
			return
		}
		let json = JSON(result)
		print(json)
	}
}
