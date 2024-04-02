//
//  LogInViewController.swift
//  Photo King
//
//  Created by Timothy Liu on 3/28/24.
//

import UIKit
import SwiftUI

class LogInViewController: UIViewController {
    
    @IBOutlet var txtEmail: UITextField!
    @IBOutlet var txtPassword: UITextField!
    @IBOutlet var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        loginButton.layer.cornerRadius = loginButton.frame.size.height/2
    }
    
    @IBAction func didTapBackButton(sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func didTapLogInButton(sender: UIButton) {
        
        guard let email = txtEmail.text else {
           return
        }
        guard let password = txtPassword.text else {
            return
        }
        
        let host = UIHostingController(rootView: SwiftUIView())
        self.navigationController?.pushViewController(host, animated: true)
        
    }

    

}
