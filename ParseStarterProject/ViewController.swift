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
        
        
        
    }
    
    @IBOutlet var signupOrLogin: UIButton!
    
    @IBAction func changeSignupMode(_ sender: Any) {
        
        if signupMode {
            
            // change to login mode
            
        }
        
    }
   
    @IBOutlet var changeSignupModeButton: UIButton!
    
    @IBOutlet var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        


}
}
