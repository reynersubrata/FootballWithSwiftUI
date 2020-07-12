//
//  ContentView.swift
//  FootballWithSwiftUI
//
//  Created by Reyner Subrata on 06/07/20.
//  Copyright © 2020 Reyner Subrata. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		TabView {
			PremierLeagueView()
				.tabItem {
					Tab(imageName: "chart.bar", text: "Premier League")
			}
		.tag(0)
			
			LaLigaView()
					.tabItem {
						Tab(imageName: "map", text: "La Liga")
				}
			.tag(1)
		}
    }
}


private struct Tab: View {
    
    let imageName: String
    let text: String
    
    var body: some View {
        
        VStack {
            Image(systemName: imageName)
            Text(text)
        }
        
    }
}
