//
//  ViewController.swift
//  War
//
//  Created by Christopher Valorose on 11/15/14.
//  Copyright (c) 2014 Christopher Valorose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageview: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgoundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.playRoundButton.setTitle("Play", forState: UIControlState.Normal)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        self.playRoundButton.setTitle("Play Round", forState: UIControlState.Normal)
    }

}

