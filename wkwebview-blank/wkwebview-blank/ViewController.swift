//
//  ViewController.swift
//  wkwebview-blank
//
//  Created by Liam DeBeasi on 4/21/22.
//
import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Load a page from an HTML string
        webView.loadHTMLString("<html><body>Hello World</body></html>", baseURL: nil)
        
        // You can load a webview via URL
        //let url = URL(string: "https://ionic.io")!
        //webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }


}
