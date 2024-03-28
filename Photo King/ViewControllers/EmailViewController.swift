//
//  EmailViewController.swift
//  Photo King
//
//  Created by Timothy Liu on 3/28/24.
//

import UIKit

class EmailViewController: UIViewController {

    @IBOutlet var continueButton: UIButton!
    @IBOutlet var txtEmail: UITextField!
    
    var password: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        continueButton.layer.cornerRadius = continueButton.frame.size.height/2
    }
    
    @IBAction func didTapBackButton(sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func didTapContinueButton(sender: UIButton) {
        guard let email = txtEmail.text else { return }
        
        
        guard let storyboard = self.storyboard else {
            return
        }
        let vc = storyboard.instantiateViewController(withIdentifier: identifier.HomescreenVC)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
