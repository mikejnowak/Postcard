//
//  ViewController.swift
//  Postcard
//
//  Created by Nowak, Michael J. on 9/19/14.
//  Copyright (c) 2014 Argonne National Laboratory. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //code will evaluate when we press the button
        messageLabel.text = enterNameTextField.text;
        messageLabel.text = messageLabel.text! + ", " + enterMessageTextField.text;
        messageLabel.hidden = false;
        enterMessageTextField.text = "";
        enterMessageTextField.resignFirstResponder();
        messageLabel.textColor = UIColor.purpleColor();
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal);
        mailButton.backgroundColor = UIColor.redColor();
        
        
    }

}

