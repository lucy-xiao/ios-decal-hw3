//
//  ViewController.swift
//  Hangman
//
//  Created by Gene Yoo on 10/13/15.
//  Copyright © 2015 cs198-ios. All rights reserved.
//

import UIKit

class HangmanViewController: UIViewController {

    var word: String!
    
    @IBOutlet var wordtoGuess: UILabel!
    @IBOutlet var guessButton: UIButton!
    @IBOutlet var newGameButton: UIButton!
    
    @IBOutlet var textField: UITextField!
    @IBOutlet var guessedLabel: UILabel!
    
    var game: Hangman!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func newGame() {
        game = Hangman()
        game.start()
        wordtoGuess.text = game.knownString
    }
    
    @IBAction func guess() {
        game.guessLetter(textField.text!)
        guessedLabel.text = game.guesses()
        wordtoGuess.text = game.knownString
    }
}

