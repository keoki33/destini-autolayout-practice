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

    let story0 = "You see a fork in the road"
    let choice1 = "Take a left."
    let choice2 = "Take a right."

    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = story0
    }

    @IBAction func choiceMade(_ sender: UIButton) {}
}
