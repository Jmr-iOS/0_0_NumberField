//
//  ViewController.swift
//  0_0 - Empty Template (Swift)
//
//  Created by Justin Reina on 11/12/15.
//  Copyright © 2015 Jaostech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    var numberInput : UITextField!;
    var returnButton : UIButton!;

    var myFloat : Float!;
    
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.view.translatesAutoresizingMaskIntoConstraints = false;
     
        self.makeNumInput();
        self.makeReturnBtn();
        
        
        print("ViewController.viewDidLoad():       viewDidLoad() complete");
        
        return;
    }

    


    func makeNumInput() {
        
        self.numberInput = UITextField(frame: CGRectMake(20, 50, 250, 40));
        self.numberInput.placeholder = "enter number here";
        
        self.numberInput.keyboardType = .DecimalPad;                                        /* The Key for Numeric!                 */
        
        
        self.view.addSubview(numberInput);
        
        return;
    }
    
    
    func makeReturnBtn() {
        
        //Buton Init
        self.returnButton = UIButton(type: UIButtonType.RoundedRect);
        
        self.returnButton.setTitle("Return",      forState: UIControlState.Normal);
        self.returnButton.sizeToFit();
        self.returnButton.center = CGPointMake(45, 100);

        //actions
        self.returnButton.addTarget(self, action: "pressed:", forControlEvents:  .TouchUpInside);
        
        //add
        self.view.addSubview(returnButton);
        
        return;
    }
    
    func pressed(sender: UIButton!) {

        //return keyboard (assume it's up :)  )
        self.view.endEditing(true);
        self.returnButton.resignFirstResponder();           //not sure if this is required, but is often used so I'll use it too! not required though?
        
        self.myFloat = Float(self.numberInput.text!)!;
        
        print("I retrieved '\(self.myFloat)'");
        
        return;
    }
    
    
    override func didReceiveMemoryWarning() { super.didReceiveMemoryWarning(); }
}

