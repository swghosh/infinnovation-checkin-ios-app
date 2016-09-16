//
//  ViewController.swift
//  Infinnovation e-Check-in
//
//  Created by SwG Ghosh on 15/09/16.
//  Copyright © 2016 infinnovation. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var activity: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadAddress()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadAddress() {
        let requestURL = NSURL(string: "https://echeckin.infinnovation.co")
        let request = NSURLRequest(URL: requestURL!)
        webView.loadRequest(request)
    }
    
    func webViewDidStartLoad(_ : UIWebView) {
        activity.startAnimating()
    }
    
    func webViewDidFinishLoad(_ : UIWebView) {
        activity.stopAnimating()
    }

}

