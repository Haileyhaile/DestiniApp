//
//  ViewController.swift
//  Destini
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var myStoryBrain = StoryBrain()
    var storyNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func optionButtonPressed(_ sender: UIButton) {
        myStoryBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = myStoryBrain.getTitle()
        choice1Button.setTitle(myStoryBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(myStoryBrain.getChoice2(), for: .normal)
    }
    
}

