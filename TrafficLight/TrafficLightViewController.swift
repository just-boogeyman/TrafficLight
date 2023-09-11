//
//  ViewController.swift
//  TrafficLight
//
//  Created by Ярослав Кочкин on 11.09.2023.
//

import UIKit

enum TrafficLightType {
    case red
    case yellow
    case green
}

class TrafficLightViewController: UIViewController {
    
    private let isOn: CGFloat = 1
    private let isOff: CGFloat = 0.3
    
    private var trafficLight: TrafficLightType = .red
    
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var styleButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        let rounding = redView.frame.width / 2
        
        redView.layer.cornerRadius = rounding
        redView.alpha = isOff
        
        yellowView.layer.cornerRadius = rounding
        yellowView.alpha = isOff
        
        greenView.layer.cornerRadius = rounding
        greenView.alpha = isOff
    }
    
    
    @IBAction func tuppedStartButton() {
        styleButton.setTitle("NEXT", for: .normal)
        
        switch trafficLight {
        case .red:
            greenView.alpha = isOff
            redView.alpha = isOn
            trafficLight = .yellow
        case .yellow:
            redView.alpha = isOff
            yellowView.alpha = isOn
            trafficLight = .green
        case .green:
            yellowView.alpha = isOff
            greenView.alpha = isOn
            trafficLight = .red
        }
        
    }
}

