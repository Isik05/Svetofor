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
        
        startButton.tintColor = UIColor.red
    }

    @IBAction func startAppButton() {
        
    }
    
}

