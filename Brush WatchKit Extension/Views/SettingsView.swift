//
//  SettingsView.swift
//  Brush WatchKit Extension
//
//  Created by Bastiaan Jansen on 27/06/2020.
//

import SwiftUI

struct SettingsView: View {
    
    @State var goalTime: Int = 120
    let minimumGoalTime = 10
    let maximumGoalTime = 600
    
    var body: some View {
        Form {
            Section {
                Picker("Goal brush time", selection: $goalTime) {
                    ForEach(minimumGoalTime..<maximumGoalTime) {
                        Text("\($0)")
                    }
                }.pickerStyle(WheelPickerStyle())
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}