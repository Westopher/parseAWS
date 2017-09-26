/**
* Copyright (c) 2015-present, Parse, LLC.
* All rights reserved.
*
* This source code is licensed under the BSD-style license found in the
* LICENSE file in the root directory of this source tree. An additional grant
* of patent rights can be found in the PATENTS file in the same directory.
*/

import UIKit
import Parse

class ViewController: UIViewController {
    
    var signupMode = true
    
    
    @IBOutlet var emailTextField: UITextField!

    @IBOutlet var passwordTextField: UITextField!

    @IBAction func signupOrLogin(_ sender: Any) {
        
        if emailTextField.text == "" || passwordTextField.text == "" {
            
            let alert = UIAlertController(title: "Error in form", message: "Please enter a username and password", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                
                self.dismiss(animated: true, completion: nil)
                
            }))
            
                self.present(alert, animated: true, completion: nil)
        }
    
    }
        
        
    
    
    @IBOutlet var signupOrLogin: UIButton!
    
    @IBAction func changeSignupMode(_ sender: Any) {
        
        if signupMode {
            
            // change to login mode
            
            signupOrLogin.setTitle("Log In", for: [])
            
            changeSignupModeButton.setTitle("Sign Up", for: [])
            
            messageLabel.text = "Don't have an account?"
            
            signupMode = false
            
        } else {
            
            // Change to sign up mode
            
            signupOrLogin.setTitle("Sign Up", for: [])
            
            changeSignupModeButton.setTitle("Log In", for: [])
            
            messageLabel.text = "Already have an account?"
            
            signupMode = true
        }
        
    }
   
    @IBOutlet var changeSignupModeButton: UIButton!
    
    @IBOutlet var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        


}
}
