//
//  SignUpViewController.swift
//  Photo King
//
//  Created by Timothy Liu on 3/7/24.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet var txtViewPolicy: UITextView!
    @IBOutlet var txtFirstName: UITextField!
    @IBOutlet var txtLastName: UITextField!
    @IBOutlet var btnSignUpAccept: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        btnSignUpAccept.layer.cornerRadius = btnSignUpAccept.frame.size.height/2
    }
    
    func setupViewtext() {
        guard let text = txtViewPolicy.text else {
            return
        }
        
        let path = "https://www.youtube.com/watch?v=FRawh5WJ3Gg&t=174s"
        let substring = "Privacy Policy"
        let attrstring = NSAttributedString.createHPLink(text, substring, path)
        txtViewPolicy.attributedText = attrstring
        txtViewPolicy.textColor = .gray
    }
    
    @IBAction func didTapSignupAccept(sender : UIButton) {
        print("Sign up")
    }
    
    @IBAction func didTapBack(sender : UIButton) {
        self.navigationController?.popViewController(animated: true)
    }


}
