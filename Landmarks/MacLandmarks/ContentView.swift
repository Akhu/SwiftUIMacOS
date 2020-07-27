//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Anthony Da Cruz on 09/06/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedLandmark: Landmark?
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            NavigationMaster(selectedLandmark: $selectedLandmark)
            if selectedLandmark != nil {
                NavigationDetail(landmark: selectedLandmark!)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserData())
    }
}
