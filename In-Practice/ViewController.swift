//
//  ViewController.swift
//  In-Practice
//
//  Created by steve groves on 03/04/2018.
//  Copyright © 2018 steve groves. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var swipeBack: UISwipeGestureRecognizer!
    @IBOutlet weak var webView: WKWebView!
    
    @IBAction func swipeBackAction(_ sender: UISwipeGestureRecognizer) {
        if webView.canGoBack {
            webView.goBack()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let urlString:String = "https://www.westhampshireccg.nhs.uk/In-practice"
        guard let url:URL = URL(string: urlString) else
        { return }
        let urlRequest:URLRequest = URLRequest(url: url)
        webView.load(urlRequest)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

