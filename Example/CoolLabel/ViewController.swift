//
//  ViewController.swift
//  CoolLabel
//
//  Created by 2019537 on 01/27/2023.
//  Copyright (c) 2023 2019537. All rights reserved.
//

import UIKit
import CoolLabel

class ViewController: UIViewController {

    var isBlinking = false
    let blinkingLabel = CoolLabel(frame: CGRectMake(10, 20, 200, 30))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup the BlinkingLabel
        blinkingLabel.text = "I blink!"
        blinkingLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
        // Create a UIButton to toggle the blinking
        let toggleButton = UIButton(frame: CGRectMake(10, 60, 125, 30))
        toggleButton.setTitle("Toggle Blinking", for: .normal)
        toggleButton.setTitleColor(UIColor.red, for: .normal)
        toggleButton.addTarget(self, action: #selector(self.toggleBlinking), for: .touchUpInside)
        view.addSubview(toggleButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func toggleBlinking() {
           if (isBlinking) {
               blinkingLabel.stopBlinking()
           } else {
               blinkingLabel.startBlinking()
           }
           isBlinking = !isBlinking
       }

}

