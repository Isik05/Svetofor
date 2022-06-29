//
//  ViewController.swift
//  Svetofor
//
//  Created by ислам Мирзаханов  on 19.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redColorView: UIView!
    @IBOutlet var greenColorView: UIView!
    @IBOutlet var yellowColorView: UIView!
    
    @IBOutlet var startButtonView: UIButton!
    
    private enum CurrentLight {
        case red, yellow, green
    }
    
    private var currentLight = CurrentLight.red
    private var lightIsOn: CGFloat = 1
    private var lightIsOff: CGFloat = 0.3
  
    override func viewDidLoad() {
        super.viewDidLoad()
        startButtonView.layer.cornerRadius = 10
        
        redColorView.alpha = lightIsOn
        yellowColorView.alpha = lightIsOff
        greenColorView.alpha = lightIsOff
        
    }
    override func viewWillLayoutSubviews() {
        redColorView.layer.cornerRadius = redColorView.frame.width/2
        yellowColorView.layer.cornerRadius = yellowColorView.frame.width/2
        greenColorView.layer.cornerRadius = greenColorView.frame.width/2
    }
    

    @IBAction func setupButton() {
        if startButtonView.currentTitle == "Start" {
            startButtonView.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            greenColorView.alpha = lightIsOff
            redColorView.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redColorView.alpha = lightIsOff
            yellowColorView.alpha = lightIsOn
            currentLight = .green
        case .green:
            yellowColorView.alpha = lightIsOff
            greenColorView.alpha = lightIsOn
            currentLight = .red
            
        }
    }
    
    }

//private var currentLight = CurrentLight.red
//private let lightIsOn: CGFloat = 1
//private let lightIsOff: CGFloat = 0.3
//
//override func viewDidLoad() {
//    super.viewDidLoad()
//    startButton.layer.cornerRadius = 10
//
//    redLight.alpha = lightIsOff
//    yellowLight.alpha = lightIsOff
//    greenLight.alpha = lightIsOff
//
//    print("Размер стороны, доступный в методе viewDidLoad: \(redLight.frame.height)")
//}
//
//override func viewWillLayoutSubviews() {
//    redLight.layer.cornerRadius = redLight.frame.width / 2
//    yellowLight.layer.cornerRadius = redLight.frame.width / 2
//    greenLight.layer.cornerRadius = redLight.frame.width / 2
//
//    print("Размер стороны, доступный в методе viewWillLayoutSubviews: \(redLight.frame.height)")
//}
//
//@IBAction func startButtonPressed() {
//    if startButton.currentTitle == "START" {
//        startButton.setTitle("NEXT", for: .normal)
//    }
//
//    switch currentLight {
//    case .red:
//        greenLight.alpha = lightIsOff
//        redLight.alpha = lightIsOn
//        currentLight = .yellow
//    case .yellow:
//        redLight.alpha = lightIsOff
//        yellowLight.alpha = lightIsOn
//        currentLight = .green
//    case .green:
//        greenLight.alpha = lightIsOn
//        yellowLight.alpha = lightIsOff
//        currentLight = .red
//    }
//}
//}
//
//// MARK: - CurrentLight
//extension ViewController {
//private enum CurrentLight {
//    case red, yellow, green
//}
//}

