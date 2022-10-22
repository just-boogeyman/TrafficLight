//
//  ViewController.swift
//  TrafficLight
//
//  Created by Ярослав Кочкин on 21.10.2022.
//

import UIKit


enum TrafficLightTipe {
    case red, yellow, green
}


class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    @IBOutlet weak var colorChangeButton: UIButton!
    
    
    private var colorLantern = TrafficLightTipe.red
    private let offLight: CGFloat = 0.3
    private let onLight: CGFloat = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingStart()
    }
    
    // Стартовая настройка экрана при первом запуске
    private func settingStart() {
        
        redLightView.layer.cornerRadius = redLightView.bounds.width / 2
        redLightView.alpha = offLight
        
        yellowLightView.layer.cornerRadius = yellowLightView.bounds.width / 2
        yellowLightView.alpha = offLight
        
        greenLightView.layer.cornerRadius = greenLightView.bounds.width / 2
        
        colorChangeButton.setTitle("Start", for: .normal)
        colorChangeButton.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        colorChangeButton.layer.cornerRadius = 10

    }
    
    
    // Логика переключения светофора
    private func lightTheLantern() {
        colorChangeButton.setTitle("NEXT", for: .normal)
        
        switch colorLantern {
        case .red:
            greenLightView.alpha = offLight
            redLightView.alpha = onLight
            colorLantern = .yellow
        case .yellow:
            redLightView.alpha = offLight
            yellowLightView.alpha = onLight
            colorLantern = .green
        case .green:
            yellowLightView.alpha = offLight
            greenLightView.alpha = onLight
            colorLantern = .red
        }
    }
    
    // События по нажатию кнопки
    @IBAction func colorChangeButtonTapped() {
        lightTheLantern()
    }
}

