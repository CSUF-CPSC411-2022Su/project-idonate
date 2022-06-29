//
//  RecipeWebView.swift
//  iDonate
//
//  Created by Daniel on 6/26/22.
//

import SwiftUI
import WebKit

struct RecipeWebView: UIViewRepresentable {
    var URL: URL?

    // This function creates the view object for the website.
    func makeUIView(context: Context) -> WKWebView {
        let preference = WKWebpagePreferences()
        preference.allowsContentJavaScript = true

        let configure = WKWebViewConfiguration()
        configure.defaultWebpagePreferences = preference

        return WKWebView(frame: .zero, configuration: configure)
    }

    // This function updates the view with the URL information provided.
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let url = URL else {
            return
        }

        uiView.load(URLRequest(url: url))
    }
}
