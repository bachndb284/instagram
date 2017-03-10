//
//  LoginViewController.swift
//  Instagram
//
//  Created by Nguyen Bach on 2/9/17.
//  Copyright © 2017 Nguyen Bach. All rights reserved.
//

import UIKit
import Firebase
class LoginViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    @IBAction func loginPressed(_ sender: Any) {
       
        guard emailField.text != "", passwordField.text != "" else {
            return
        }
        FIRAuth.auth()?.signIn(withEmail: emailField.text!, password: passwordField.text!, completion: { (user, error) in
            if let error = error{
                print(error.localizedDescription)
               
            }
            if let user = user{
                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "usersVC")
                self.present(vc, animated: true, completion: nil)
               
                
            }
        })
        
        
    }
  

   

}
