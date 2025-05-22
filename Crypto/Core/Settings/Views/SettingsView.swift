//
//  SettingsView.swift
//  Crypto
//
//  Created by dofxmine on 22.05.2025.
//

import SwiftUI

struct SettingsView: View {
    
    let defaultURL = URL(string: "https://google.com")!
    let youtubeURL = URL(string: "https://youtube.com/c/swiftfulthinking")!
    let coingeckoURL = URL(string: "https://coingecko.com")!
    let personalURL = URL(string: "https://github.com/wouldyoueverfly")!
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
                List {
                    swiftfulThinking

                    coinGeckoSection

                    developerSection

                    applicationSection

                }
            .tint(Color.blue)
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    XMarkButton(dismiss: _dismiss)
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}

extension SettingsView {
    private var swiftfulThinking: some View {
        Section {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was made by following a @SwiftfulThinking course on YouTube. It uses MVVM Architecture, Combine and CoreData!")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Subscribe on YouTube🥳", destination: youtubeURL)
                .font(.headline)
        } header: {
            Text("Swiftful Thinking")
        }
    }
    
    private var coinGeckoSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The cryptocurrency data that is used in this app comes from a free API provided by CoinGecko! Prices might be slightly delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visit CoinGecko🦎", destination: coingeckoURL)
                .font(.headline)
        } header: {
            Text("CoinGecko")
        }
    }
    
    private var developerSection: some View { // in develop
        Section {
            VStack(alignment: .leading) {
                Image("me")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The App was developed by Ruslan Khusainov. If you have any suggestions or want to contribute to the App, please contact me on Telegram @dofxmine")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.theme.accent)
            }
            .padding(.vertical)
            Link("My GitHub Profile🦊", destination: personalURL)
                .font(.headline)
        } header: {
            Text("Developer")
        }
    }
    private var applicationSection: some View {
        Section {
            Link("Terms of Service", destination: defaultURL)
                .font(.headline)
            Link("Privacy Policy", destination: defaultURL)
                .font(.headline)
            Link("Company Website", destination: defaultURL)
                .font(.headline)
            Link("Learn More", destination: defaultURL)
                .font(.headline)
        } header: {
            Text("Application")
        }
    }
}
