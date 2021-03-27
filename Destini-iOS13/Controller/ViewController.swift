//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var storyLabel: UILabel!
    @IBOutlet var choice1Button: UIButton!
    @IBOutlet var choice2Button: UIButton!
    
    var story = 0

    let stories = [
        Story(title: "You see a fork in the road", choice1: "Take a left.", choice2: "Take a right."),
        Story(title: "You see a tiger", choice1: "Shout for help.", choice2: "Play dead."),
        Story(title: "You find a treasure chest", choice1: "Open it.", choice2: "Check for traps.")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        story += sender.tag
        updateUI()
    }
    
    func updateUI() {
       
        storyLabel.text = stories[story].title
        choice1Button.setTitle(stories[story].choice1, for: .normal)
        choice2Button.setTitle(stories[story].choice2, for: .normal)
        
        
    }
}
