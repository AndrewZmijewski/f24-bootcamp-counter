//
//  SettingsView.swift
//  Counter
//
//  Created by Andrew Zmijewski on 9/24/24.
//

import SwiftUI

struct SettingsView: View {
    
    @Binding var max: Int;
    
    var body: some View {
        Stepper("Max Count: \(max)", value: $max)
            .font(.title)
            .padding()
            .background(Color.white, in: .rect(cornerRadius: 10))
            .padding()
    }
}

#Preview {
    SettingsView(max: .constant(10))
}
