//
//  WebView.swift
//  TestFlights
//
//  Created by Ben Mitchell on 03/01/2020.
//  Copyright © 2020 Ben Mitchell. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

struct Webview: UIViewRepresentable {
    var url: String
    
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: self.url) else {
            return WKWebView()
        }
        
        let request = URLRequest(url : url)
        let wkWebview = WKWebView()
        wkWebview.load(request)
        return wkWebview
    }
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<Webview>) {
        
    }
}
