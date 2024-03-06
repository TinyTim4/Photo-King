//
//  GetStartedViewController.swift
//  Photo King
//
//  Created by Timothy Liu on 3/6/24.
//

import UIKit
import Contacts

class GetStartedViewController: UIViewController {
    
    @IBOutlet var btnContinue: UIButton!
    
    var contactStore = CNContactStore()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        btnContinue.layer.cornerRadius = btnContinue.frame.size.height/2
    }
    
    func requestForContactAccess(completionHandler: @escaping (_ accessGranted: Bool) -> Void) {
        let authorizationStatus = CNContactStore.authorizationStatus(for: CNEntityType.contacts)
        switch authorizationStatus {
        case .authorized:
            completionHandler(true)
        case .denied, .notDetermined:
            self.contactStore.requestAccess(for: CNEntityType.contacts, completionHandler: { (access, accessError) -> Void in
                if access {
                    completionHandler(access)
                } else {
                    if authorizationStatus == CNAuthorizationStatus.denied {
                        DispatchQueue.main.async(execute: {() -> Void in
                            let message = "\(accessError!.localizedDescription)\n\nPlease allow the app to access your contacts through the Settings."
                            print(message)
                        })
                    }
                }
            })
        default:
            completionHandler(false)
        }
    }
    @IBAction func didTapContinueButton(sender: UIButton) {
        requestForContactAccess { (granted) in
            if granted {
                print(granted , "permission granted")
            }
        }
    }

    @IBAction func didTapBackButton(sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

}
