//
//  ViewController.swift
//  iraTestApp
//
//  Created by Dmitriy on 03.03.23.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var helloWorldLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        helloWorldLabel.isHidden = true
        buttonOne.layer.cornerRadius = 10
        
    }

    @IBAction func pressButtonOne(_ sender: Any) {
        
        if helloWorldLabel.isHidden {
            helloWorldLabel.isHidden = false
            buttonOne.setTitle("Hide", for: .normal)
        } else {
            helloWorldLabel.isHidden = true
            buttonOne.setTitle("Show", for: .normal)
        }
        
    }
}

