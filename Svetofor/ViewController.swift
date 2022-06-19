//
//  ViewController.swift
//  Svetofor
//
//  Created by ислам Мирзаханов  on 19.06.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redcolorView: UIView!
    @IBOutlet var yellowcolorView: UIView!
    @IBOutlet var greencolorView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redcolorView.layer.cornerRadius = 50
        redcolorView.backgroundColor = UIColor.red.withAlphaComponent(0.25)

        yellowcolorView.layer.cornerRadius = 50
        yellowcolorView.backgroundColor = UIColor.yellow.withAlphaComponent(0.25)
        
        greencolorView.layer.cornerRadius = 50
        greencolorView.backgroundColor = UIColor.green.withAlphaComponent(0.25)
        
        startButton.tintColor = UIColor.blue
    }

    @IBAction func startAppButton(_ sender: UIButton) {
        switch UIColor() {
        case .red:
            redcolorView.backgroundColor = UIColor.red.withAlphaComponent(1)
        case .yellow:
            yellowcolorView.backgroundColor = UIColor.yellow.withAlphaComponent(1)
        case .green:
            greencolorView.backgroundColor = UIColor.green.withAlphaComponent(1)
        default:
            print("error")
        }
    }

}

//        switch UIButton(){
//        case redcolorView:
//            redcolorView.backgroundColor = UIColor.red.withAlphaComponent(1)
//        case yellowcolorView:
//            yellowcolorView.backgroundColor = UIColor.yellow.withAlphaComponent(1)
//        case greencolorView:
//            greencolorView.backgroundColor = UIColor.green.withAlphaComponent(1)
//        default:
//            print("error")
