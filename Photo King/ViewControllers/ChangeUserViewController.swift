//
//  ChangeUserViewController.swift
//  Photo King
//
//  Created by Timothy Liu on 3/26/24.
//

import UIKit

class ChangeUserViewController: UIViewController {

    @IBOutlet var txtUsername: UITextField!
    @IBOutlet var btnContinue: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        btnContinue.layer.cornerRadius = btnContinue.frame.size.height/2
    }
    
    @IBAction func didTapBackButton(sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func didTapContinueButton(sender: UIButton) {
        print("tapped continue")
    }

}
