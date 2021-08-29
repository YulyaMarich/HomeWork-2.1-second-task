//
//  ViewController.swift
//  HomeWork2.1 second task
//
//  Created by Julia on 28.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    
    @IBOutlet weak var yellowView: UIView!
    
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var startButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        redView.layer.cornerRadius = redView.frame.height / 2
        yellowView.layer.cornerRadius = yellowView.frame.height / 2
        greenView.layer.cornerRadius = greenView.frame.height / 2
        startButton.layer.cornerRadius = 10
    }

    @IBAction func startButtonPressed() {
        if redView.alpha < 1 && yellowView.alpha < 1 && greenView.alpha < 1 {
            redView.alpha = 1
            startButton.setTitle("NEXT", for: .normal)
        } else if redView.alpha == 1 && yellowView.alpha < 1 && greenView.alpha < 1 {
            yellowView.alpha = 1
            redView.alpha = 0.3
        } else if redView.alpha < 1 && yellowView.alpha == 1 && greenView.alpha < 1 {
            greenView.alpha = 1
            yellowView.alpha = 0.3
        } else if redView.alpha < 1 && yellowView.alpha < 1 && greenView.alpha == 1 {
        redView.alpha = 1
        greenView.alpha = 0.3
        }
    }
}
    
