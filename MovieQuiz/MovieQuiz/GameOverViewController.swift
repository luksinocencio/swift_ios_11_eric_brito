//
//  GameOverViewController.swift
//  MovieQuiz
//
//  Created by Lucas Inocencio on 15/12/2017.
//  Copyright © 2017 Lucas Inocencio. All rights reserved.
//

import UIKit

class GameOverViewController: UIViewController {

    @IBOutlet weak var lbScore: UILabel!
    var score: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbScore.text = "\(score)"
    }
    
    @IBAction func playAgain(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
