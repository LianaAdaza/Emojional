//
//  ViewController.swift
//  Emojional
//
//  Created by Liana Adaza on 5/7/21.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    let emojis = ["🤕": "troubled", "😚": "cheery"]
   
    let customMessages = ["troubled": ["It'll all be better!", "Hang in there!", "You're not alone, please take care!"], "cheery": ["You're so lovely!", "You're doing great!", "Spread love!"]]
    
    @IBAction func showMessage(sender: UIButton) {

        let selectedEmotion = (sender.titleLabel?.text)!

        let number = Int.random(in: 0..<3)
        let options = customMessages[emojis[selectedEmotion]!]!
        let emojiMessage = options[number]

        let alertController = UIAlertController(title: "WORDS OF WISDOM 😋🥠", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)

            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

            present(alertController, animated: true, completion: nil)
    }
}
