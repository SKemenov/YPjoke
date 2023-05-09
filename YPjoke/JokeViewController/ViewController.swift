//
//  ViewController.swift
//  YPjoke
//
//  Created by Sergey Kemenov on 07.05.2023.
//

import UIKit

class ViewController: UIViewController {
    //     MARK: - Outlets
    //
    //
    @IBOutlet private weak var jokeTitleLabel: UILabel!
    @IBOutlet private weak var jokeValueLabel: UILabel!
    @IBOutlet private weak var typeTitleLabel: UILabel!
    @IBOutlet private weak var typeValueLabel: UILabel!
    @IBOutlet private weak var setupLabel: UILabel!
    @IBOutlet private weak var jokeLabel: UILabel!
    @IBOutlet private weak var resetButton: UIButton!
    @IBOutlet private weak var hintButton: UIButton!

    // MARK: - Enums
    //
    // enum for all types of jokes
    enum JokeType: String {
        case general
    }

    // MARK: - Structs
    //
    // main struct to hold all information about a joke
    struct Joke {
        let jokeId: Int
        let jokeTitle: String
        let jokeType: JokeType
        let jokeHint: String
    }

    //  MARK: - Variables, Constants
    //
    // an index for the jokes array
    private var currentJokeIndex: Int = 0
    
    // MARK: - Mock Data
    //
    // make jokes array and fill in an initial joke from the Figma template
    private let jokes: [Joke] = [
        Joke(
            jokeId: 256,
            jokeTitle: "Why did the chicken get a penalty?",
            jokeType: .general,
            jokeHint: "For fowl play")
    ]
    
    // MARK: - Lifecycle
    //
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        // init all UILabel's labels
        jokeTitleLabel.text = "Joke ID"
        typeTitleLabel.text = "Type"
        setupLabel.text = "Setup"
        
        // load the first joke
        resetJokes()
        
    }

    // MARK: - Actions
    //
    //
    //    Action for the reset button
    @IBAction private func resetButtonClicked(_ sender: UIButton) {
        resetJokes()
    }
    
    //    Action for the hint button
    @IBAction private func hintButtonClicked(_ sender: UIButton) {
        showAlert(joke: jokes[currentJokeIndex])
    }
 
    
   
    // MARK: - Methods
    //
    //
    // update UI data from the Joke's data
    private func showJoke(joke: Joke) {
        jokeValueLabel.text = "\(joke.jokeId)"
        typeValueLabel.text = joke.jokeType.rawValue
        jokeLabel.text = joke.jokeTitle
    }

    
    // reset the joke viewModel
    private func resetJokes() {
        // reset joke's index
        currentJokeIndex = 0
        
        // load the first joke
        let firstJoke = jokes[currentJokeIndex]
        
        // init all UILabel's text from the firstJoke
        showJoke(joke: firstJoke)
    }
    
    
    // Method to show a hint alert
    private func showAlert(joke: Joke) {
        
        // Let's start with constants for the alert and the action
        let alert = UIAlertController(
            title: "Punchline",
            message: joke.jokeHint,
            preferredStyle: .alert)
        
        // prepare the action (a button) and to-do steps
        let action = UIAlertAction(
            title: "Ok",
            style: .default) { _ in // <- here starting the closure - what exactly need to do after clicking the alert button
                // the code should be here
            }
        
        // combine the alert and the action
        alert.addAction(action)
        
        // show the alert with the action
        self.present(alert, animated: true, completion: nil)
    }
}

