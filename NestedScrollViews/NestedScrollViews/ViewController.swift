//
//  ViewController.swift
//  NestedScrollViews
//
//  Created by Joyce Echessa on 6/8/15.
//  Copyright (c) 2015 Appcoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var background: UIScrollView!
    @IBOutlet weak var foreground: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        foreground.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
        let foregroundHeight = foreground.contentSize.height - CGRectGetHeight(foreground.bounds)
        let percentageScroll = foreground.contentOffset.y / foregroundHeight
        let backgroundHeight = background.contentSize.height - CGRectGetHeight(background.bounds)
        
        background.contentOffset = CGPoint(x: 0, y: backgroundHeight * percentageScroll)
    }


}

