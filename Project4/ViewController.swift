//
//  ViewController.swift
//  Project4
//
//  Created by Anthony Beckford on 10/29/22.
//

import UIKit
import WebKit



class ViewController: UIViewController, WKNavigationDelegate {
    // creating a property to reference it later on
    var webView: WKWebView!
    
    
    // adding a method
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let url = URL(string: "https://www.hackingwithswift.com")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        
    }


}

