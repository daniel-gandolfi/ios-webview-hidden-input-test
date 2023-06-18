//
//  ContentView.swift
//  test
//
//  Created by Beatrice Marcotulli on 18/06/23.
//

import SwiftUI
import WebKit

struct LocalHtmlFileView: UIViewRepresentable {
    let url = Bundle.main.url(forResource: "index", withExtension:"html")!
    let webview = WKWebView();
    func makeUIView(context: Context) -> WKWebView {
        return webview
    }
        
    func updateUIView(_ uiView: WKWebView, context: Context) {
        do{
            let html = try String( contentsOf: url);
            webview.loadHTMLString(html, baseURL: Bundle.main.bundleURL)
        } catch {
            print(error)
        }
    }
}

struct LocalHtmlFileView_Previews: PreviewProvider {
    static var previews: some View {
        LocalHtmlFileView()
    }
}
