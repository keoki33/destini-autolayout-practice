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

    let story = StoryBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        story.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }

    func updateUI() {
        storyLabel.text = story.getTitle()
        choice1Button.setTitle(story.getChoice1(), for: .normal)
        choice2Button.setTitle(story.getChoice2(), for: .normal)
    }
}
