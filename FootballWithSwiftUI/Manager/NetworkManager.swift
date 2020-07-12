//
//  NetworkManager.swift
//  FootballWithSwiftUI
//
//  Created by Reyner Subrata on 07/07/20.
//  Copyright © 2020 Reyner Subrata. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class NetworkManager {
	
	enum leagueType {
		case premierLeague
		case laLiga
	}
	
	enum informationType {
		case standings
		case clubDetails
	}
	
	private let headers = [
		"x-rapidapi-host": "",
		"x-rapidapi-key": ""
	]
	
    // Initialization
	init(leagueType: leagueType) {
		configureConnection(leagueType: leagueType)
    }
	
	private func configureConnection(leagueType: leagueType){
		Alamofire.request("https://api-football-beta.p.rapidapi.com/standings?league=39&season=2019", headers: headers).responseJSON(completionHandler: { response in
			let result = response.data
			let model = StandingsModel(data: result ?? <#default value#>)
		})
	}

}
