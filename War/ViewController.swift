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

    /**
    Defiens what happens when Play button is tapped
    */
    @IBAction func playRoundTapped(sender: UIButton) {
    //    self.playRoundButton.setTitle("Play Round", forState: UIControlState.Normal)
        
        //Generate randm numbers
        var firstRandomNumber = arc4random_uniform(13) + 1
        var secondRandomNumber = arc4random_uniform(13) + 1
        
        //construct string with card and random number
        var firstCardSting:String = String(format: "card%i", firstRandomNumber)
        var secondCardSting:String = String(format: "card%i", secondRandomNumber)
        
        // set UIImage for both cards
        self.firstCardImageview.image = UIImage(named: firstCardSting)
        self.secondCardImageView.image = UIImage(named: secondCardSting)
    }

}

