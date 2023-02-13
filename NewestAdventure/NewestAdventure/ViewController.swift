//
//  ViewController.swift
//  NewestAdventure
//
//  Created by Taylor Heyen on 2/12/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!

    var option: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "As you are out adventuring, you stumble upon a forbidden forest. Do you enter the forest?"
    }

    @IBAction func yesButtonTapped(_ sender: Any) {
        option = "Yes"
    }

    @IBAction func noButtonTapped(_ sender: Any) {
        option = "No"
    }

    @IBAction func answerButtonTapped(_ sender: Any) {
        if resultLabel.text == "As you are out adventuring, you stumble upon a forbidden forest. Do you enter the forest?" {
            if option == "Yes" {
                resultLabel.text = "As you enter the forest, you hear footsteps behind you, do you turn around to see who it is?"
            } else if option == "No" {
                resultLabel.text = "You decided to not enter the forest, do you want to go home?"
            } else {
                resultLabel.text = "You must choose"
            }
        } else if resultLabel.text == "You turn around to see who the footsteps belong to, and it is your friend Patrick. Do you continue into the forbidden forest together?" {
            if option == "Yes" {
                resultLabel.text = "As you and Patrick head further into the forbidden forest, you discover a chest. Inside the chest is $100 millon, you and Patrick split the treasure and live a happy life"
            } else if option == "No" {
                resultLabel.text = "You and Patrick decided it's best to exit the forbidden forest, but as you do, a bear pops out and eats you both"
            } else {
                resultLabel.text = "Invalid option, please try again."
            }
        } else if resultLabel.text == "You decided to not enter the forest, do you want to go home?" {
            if option == "Yes" {
                resultLabel.text = "You make it home safely, but always wonder if you should have gone further into the forbidden forest"
            } else if option == "No" {
                resultLabel.text = "You decide to not go home, and continue adventuring."
            } else {
                resultLabel.text = "Invalid option, please try again."
            }
        } else {
            resultLabel.text = "A bear pops out of nowhere and eats you alive. The end"
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: Any) {
            resultLabel.text = "As you are out adventuring, you stumble upon a forbidden forest. Do you enter the forest?"
            option = ""
        }
}

