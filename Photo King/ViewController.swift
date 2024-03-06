//
//  ViewController.swift
//  Photo King
//
//  Created by Timothy Liu on 3/5/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var btnLogin: UIButton!
    @IBOutlet var btnSignUp: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnLogin.layer.cornerRadius = btnLogin.frame.size.height/2
        btnSignUp.layer.cornerRadius = btnSignUp.frame.size.height/2
    }
    
    @IBAction func didTapLoginButton(sender: UIButton) {
        print("Login Tapped")
    }
    @IBAction func didTapSignUpButton(sender: UIButton) {
        //print("Sign Up Tapped")    }
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "GetStartedViewController") else {
            return
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

