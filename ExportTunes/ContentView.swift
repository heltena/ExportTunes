//
//  ContentView.swift
//  ExportTunes
//
//  Created by Helio Tejedor on 8/3/21.
//

import SwiftUI

struct ContentView: View {
    @State var showing = false
    var url: URL {
        Bundle.main.url(forResource: "earthtunes", withExtension: "mp4")!
    }
    
    var body: some View {
        VStack {
            Text("Hello, world!")
            Button("Export") {
                showing = true
            }
            Spacer()
        }
        .padding()
        .sheet(isPresented: $showing) {
            ActivityView(activityItems: [url], applicationActivities: nil)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
