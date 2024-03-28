//
//  BirthdateViewController.swift
//  Photo King
//
//  Created by Timothy Liu on 3/26/24.
//

import UIKit

class BirthdateViewController: UIViewController {

    @IBOutlet var txtBirthdate: UITextField!
    @IBOutlet var btnBack: UIButton!
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
        guard let storyboard = self.storyboard else {
            return
        }
        let vc = storyboard.instantiateViewController(withIdentifier: identifier.ChangeUserVC)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func didChangeDpickerValue(sender: UIDatePicker) {
        let dateFormat = "dd MMM yyyy"
        let formater = DateFormatter()
        formater.dateFormat = dateFormat
        let date = formater.string(from: sender.date)
        txtBirthdate.text = date
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
