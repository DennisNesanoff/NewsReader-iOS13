//
//  WebView.swift
//  NewsReader-iOS13
//
//  Created by Dennis Nesanoff on 27.03.2020.
//  Copyright © 2020 Dennis Nesanoff. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI


struct WebView: UIViewRepresentable {
    
    let urlSrting: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlSrting {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
