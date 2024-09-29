//
//  ContentView.swift
//  Counter
//
//  Created by Andrew Zmijewski on 9/24/24.
//

import SwiftUI

struct ContentView: View {
    let buttonFontSize: CGFloat = 90
    let titleFontSize: CGFloat = 50
    let textColor: Color = .white
    @State var counter = 0
    @State var max: Int = 10
    var percentFull: Double {
        Double(counter) / Double(max)
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.blue
                    .ignoresSafeArea()
                Color.red
                    .ignoresSafeArea()
                    .opacity(percentFull)
                VStack {
                    HStack {
                        Text("\(counter) People")
                        Spacer()
                        NavigationLink {
                            SettingsView(max: $max)
                        } label: {
                            Image(systemName: "gear")
                        }
                        .buttonStyle(.plain)
                    }
                    .font(.system(size: titleFontSize))
                    .foregroundStyle(textColor)
                    .padding()
                    Spacer()
                    HStack {
                        Button {
                            if counter > 0 {
                                counter -= 1
                            }
                        } label: {
                            Image(systemName: "minus")
                        }
                        Spacer()
                        Button {
                            if counter < max {
                                counter += 1
                            }
                        } label: {
                            Image(systemName: "plus")
                        }
                        .buttonStyle(.plain)
                    }
                    .font(.system(size: buttonFontSize))
                    .foregroundStyle(textColor)
                    .padding(.horizontal, 40)
                    .padding(.bottom, 40)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
