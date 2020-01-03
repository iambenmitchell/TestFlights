//
//  ContentView.swift
//  TestFlights
//
//  Created by Ben Mitchell on 02/01/2020.
//  Copyright © 2020 Ben Mitchell. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var fetcher = AppFetcher()
    
    var body: some View {
        NavigationView() {
            List(fetcher.apps) { app in
                NavigationLink(destination: DetailsEvent(apps: app))  {
//                NavigationLink(destination: Text("Hello"))  {
                VStack (alignment: .leading) {
                    Text(app.name)
                    
                }
            }
        }.navigationBarTitle(Text("Public TestFlight Betas"))
    }
}
    struct DetailsEvent: View {

        let apps: App

        var body: some View {
            VStack {
                Text(apps.name)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                        Spacer()
                Button(action: {
                    if let url = URL(string: self.apps.url) {
                        UIApplication.shared.open(url)}

                }) {
                    Text("Open \(apps.name) in Test Flight")
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      Group {
           ContentView()
              .environment(\.colorScheme, .light)

           ContentView()
              .environment(\.colorScheme, .dark)
        }
    }
}
