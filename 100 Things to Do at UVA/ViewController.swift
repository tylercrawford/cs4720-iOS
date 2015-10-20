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
    @IBOutlet weak var registeredUsernameField: UILabel!
    @IBOutlet weak var registeredPasswordField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        usernameTextField.delegate = self
        passwordTextField.delegate = self
        clearRegisterFields()
        
    }
    
    func clearRegisterFields() {
        registeredUsernameField.text = ""
        registeredPasswordField.text = ""
        usernameTextField.text = ""
        passwordTextField.text = ""
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
        
    }
    
    // MARK: Actions
    @IBAction func signInButton(sender: UIButton) {
        let username = usernameTextField.text
        let password = passwordTextField.text
        registeredUsernameField.text = "Username: " + username!
        registeredPasswordField.text = "Password: " + password!
    }
    
    @IBAction func handlePinch(recognizer : UIPinchGestureRecognizer) {
        clearRegisterFields()
    }
    


}

