//
//  CoolLabel.swift
//  CoolLabel
//
//  Created by Mario Alejandro Ramos on 27-01-23.
//


public class CoolLabel: UILabel {
    
    public func startBlinking() {
        let options : UIViewAnimationOptions =  [.autoreverse , .repeat]
        UIView.animate(withDuration: 0.25, delay:0.0, options:options, animations: {
              self.alpha = 0
              }, completion: nil)
      }
    
    public func stopBlinking() {
           alpha = 1
           layer.removeAllAnimations()
       }

}
