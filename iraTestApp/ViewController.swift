//
//  ViewController.swift
//  iraTestApp
//
//  Created by Dmitriy on 03.03.23.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var elementViewThree: UIView!
    @IBOutlet weak var elementViewTwo: UIView!
    @IBOutlet weak var elementViewOne: UIView!
    
    var currentLight = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        elementViewOne.alpha = 0.3
        elementViewOne.frame.size.width = 150
        elementViewOne.frame.size.height = 150
        elementViewOne.layer.cornerRadius = 75
        elementViewOne.layer.masksToBounds = false
       
        elementViewTwo.alpha = 0.3
        elementViewTwo.frame.size.width = 150
        elementViewTwo.frame.size.height = 150
        elementViewTwo.layer.cornerRadius = 75
        elementViewTwo.layer.masksToBounds = false
        
        elementViewThree.alpha = 0.3
        elementViewThree.frame.size.width = 150
        elementViewThree.frame.size.height = 150
        elementViewThree.layer.cornerRadius = 75
        elementViewThree.layer.masksToBounds = false
        
      
    }

    @IBAction func pressButtonOne(_ sender: Any) {
        buttonOne.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case 1:
            elementViewThree.alpha = 0.3
            elementViewOne.alpha = 1
            currentLight = 2
        case 2:
            elementViewOne.alpha = 0.3
            elementViewTwo.alpha = 1
            currentLight = 3
        case 3:
            elementViewThree.alpha = 1
            elementViewTwo.alpha = 0.3
            currentLight = 1
        default:
            print("HAha")
        }
        
    }
}

