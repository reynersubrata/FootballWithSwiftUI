//
//  StandingsData.swift
//  FootballWithSwiftUI
//
//  Created by Reyner Subrata on 07/07/20.
//  Copyright © 2020 Reyner Subrata. All rights reserved.
//

import Foundation

struct StandingsData {
	
	let clubName: String
	let clubPoints: Int
	let winAmount: Int
	let drawAmount: Int
	let loseAmount: Int
}

let testStandingsData = StandingsData(clubName: "RealMadrid", clubPoints: 111, winAmount: 36, drawAmount: 3, loseAmount: 0)
