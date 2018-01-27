/************************************************************************************************************************************/
/** @file       ViewController.swift
 *  @project    0_0 - NumberField
 *  @brief      x
 *  @details    x
 *
 *  @author     Justin Reina, Firmware Engineer, Jaostech
 *  @created    x
 *  @last rev   x
 *
 *
 *     @notes        x
 *
 *     @section    Opens
 *             none current
 *
 *     @section    Legal Disclaimer
 *             All contents of this source file and/or any other Jaostech related source files are the explicit property of Jaostech
 *             Corporation. Do not distribute. Do not copy.
 */
/************************************************************************************************************************************/
import UIKit


class ViewController: UIViewController {


    @objc var numberInput : UITextField!;
    @objc var returnButton : UIButton!;

    var myFloat : Float!;
    
    
    /********************************************************************************************************************************/
    /** @fcn        override func viewDidLoad()
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.view.translatesAutoresizingMaskIntoConstraints = false;
     
        self.makeNumInput();
        self.makeReturnBtn();
        
        
        print("ViewController.viewDidLoad():       viewDidLoad() complete");
        
        return;
    }

    

    /********************************************************************************************************************************/
    /** @fcn        makeNumInput()
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    func makeNumInput() {
        
        self.numberInput = UITextField(frame: CGRect(x: 20, y: 50, width: 250, height: 40));
        self.numberInput.placeholder = "enter number here";
        
        self.numberInput.keyboardType = .decimalPad;                                        /* The Key for Numeric!                 */
        
        
        self.view.addSubview(numberInput);
        
        return;
    }
    
    
    /********************************************************************************************************************************/
    /** @fcn        makeReturnBtn()
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    func makeReturnBtn() {
        
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
    
    /********************************************************************************************************************************/
    /** @fcn        pressed(_ sender: UIButton!)
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    @objc func pressed(_ sender: UIButton!) {

        //return keyboard (assume it's up :)  )
        self.view.endEditing(true);
        self.returnButton.resignFirstResponder();
        
        self.myFloat = Float(self.numberInput.text!)!;
        
        print("I retrieved '\(self.myFloat)'");
        
        return;
    }
    
    
    /********************************************************************************************************************************/
    /** @fcn         override func didReceiveMemoryWarning()
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    override func didReceiveMemoryWarning() { super.didReceiveMemoryWarning(); }
}

