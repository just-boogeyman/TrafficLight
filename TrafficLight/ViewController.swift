//
//  ViewController.swift
//  TrafficLight
//
//  Created by Ярослав Кочкин on 21.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    @IBOutlet weak var colorChangeButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = redLightView.bounds.width / 2
        redLightView.alpha = 0.3
        
        yellowLightView.layer.cornerRadius = yellowLightView.bounds.width / 2
        yellowLightView.alpha = 0.3
        
        greenLightView.layer.cornerRadius = greenLightView.bounds.width / 2
        greenLightView.alpha = 0.3
        
        colorChangeButton.setTitle("Start", for: .normal)
        colorChangeButton.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
    }
    

    @IBAction func colorChangeButtonTapped() {
        
    }
    
    
}

