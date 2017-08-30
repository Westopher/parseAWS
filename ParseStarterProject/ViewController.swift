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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let user = PFObject(className: "Users")
//        
//        user["name"] = "Sky"
//        
//        user.saveInBackground { (success, error) in
//            
//            if success {
//                
//                print("object saved")
//                
//            } else {
//                
//                if let error = error {
//                    
//                    print (error)
//
//                } else {
//                    
//                    print ("error")
//                }
//                
//                
//            }
//            }
        
        let query = PFQuery(className: "Users")
        
        query.getObjectInBackground(withId: "2ReR3K2rY9") { (object, error) in
            
            if error != nil {
            
            print(error)
            
            } else {
            
            if let user = object {
                
            user["user"] = "Wen"

                user.saveInBackground(block: { (success, error) in
                    if success {
                        print("saved")
                    } else {
                        print("error")
                    }
                
            })
            }
        }
            

        
    }
}
}
