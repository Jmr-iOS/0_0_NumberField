//
//  ViewController.swift
//  0_0 - Empty Template (Swift)
//
//  Created by Justin Reina on 11/12/15.
//  Copyright © 2015 Jaostech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @objc var numberInput : UITextField!;
    @objc var returnButton : UIButton!;

    var myFloat : Float!;
    
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.view.translatesAutoresizingMaskIntoConstraints = false;
     
        self.makeNumInput();
        self.makeReturnBtn();
        
        
        print("ViewController.viewDidLoad():       viewDidLoad() complete");
        
        return;
    }

    


    @objc func makeNumInput() {
        
        self.numberInput = UITextField(frame: CGRect(x: 20, y: 50, width: 250, height: 40));
        self.numberInput.placeholder = "enter number here";
        
        self.numberInput.keyboardType = .decimalPad;                                        /* The Key for Numeric!                 */
        
        
        self.view.addSubview(numberInput);
        
        return;
    }
    
    
    @objc func makeReturnBtn() {
        
        //Buton Init
        self.returnButton = UIButton(type: UIButtonType.roundedRect);
        
        self.returnButton.setTitle("Return",      for: UIControlState());
        self.returnButton.sizeToFit();
        self.returnButton.center = CGPoint(x: 45, y: 100);

        //actions
        self.returnButton.addTarget(self, action: #selector(ViewController.pressed(_:)), for:  .touchUpInside);
        
        //add
        self.view.addSubview(returnButton);
        
        return;
    }
    
    @objc func pressed(_ sender: UIButton!) {

        //return keyboard (assume it's up :)  )
        self.view.endEditing(true);
        self.returnButton.resignFirstResponder();           //not sure if this is required, but is often used so I'll use it too! not required though?
        
        self.myFloat = Float(self.numberInput.text!)!;
        
        print("I retrieved '\(self.myFloat)'");
        
        return;
    }
    
    
    override func didReceiveMemoryWarning() { super.didReceiveMemoryWarning(); }
}

