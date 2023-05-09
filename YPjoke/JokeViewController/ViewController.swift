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

    // MARK: - Structs
    //
    // it's empty

    //  MARK: - Variables, Constants
    //
    //
    private var jokeTitle: String = "Why did the chicken get a penalty?"
    private var jokeType: String = "general"
    private var jokeID: Int = 256
    private var jokeHint: String = "For fowl play"
    
    // MARK: - Mock Data
    //
    // it's empty
    
    // MARK: - Lifecycle
    //
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        jokeTitleLabel.text = "Joke ID"
        jokeValueLabel.text = "\(jokeID)"
        
        typeTitleLabel.text = "Type"
        typeValueLabel.text = jokeType
        
        setupLabel.text = "Setup"
        jokeLabel.text = jokeTitle
        
        resetButton.setImage(UIImage(systemName: "repeat"), for: .normal)
        
    }

    // MARK: - Actions
    //
    //
    //    Action for the reset button
    @IBAction private func resetButtonClicked(_ sender: UIButton) {
    // the code should be here
    }
    
    
    //    Action for the No button
    @IBAction private func hintButtonClicked(_ sender: UIButton) {
        showAlert()
    }
    
    // MARK: - Methods
    //
    //
    // Method to show a hint alert
    private func showAlert() {
        
        // Let's start with constants for the alert and the action
        let alert = UIAlertController(
            title: "Punchline",
            message: jokeHint,
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

