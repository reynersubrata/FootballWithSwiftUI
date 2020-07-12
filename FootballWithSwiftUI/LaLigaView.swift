//
//  LaLigaView.swift
//  FootballWithSwiftUI
//
//  Created by Reyner Subrata on 06/07/20.
//  Copyright © 2020 Reyner Subrata. All rights reserved.
//

import SwiftUI

struct LaLigaView: View {
	
	var body: some View {
		
		NavigationView {
			VStack {
				Text("La Liga!")
			}
			.navigationBarTitle("La Liga", displayMode: .inline)
		}
	}
}
