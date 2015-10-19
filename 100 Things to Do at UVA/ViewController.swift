//
//  ViewController.swift
//  100 Things to Do at UVA
//
//  Created by Tyler Crawford on 10/19/15.
//  Copyright © 2015 Tyler Crawford. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        usernameTextField.delegate = self
        passwordTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        if (textField == usernameTextField) {
            usernameLabel.text = textField.text

        }
        else {
            passwordLabel.text = "uhhhh"
        }
    }
    
    // MARK: Actions
    @IBAction func signInButton(sender: UIButton) {
        usernameLabel.text = "hello"
    }


}

