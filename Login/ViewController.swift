//
//  ViewController.swift
//  Login
//
//  Created by Tairi on 4/15/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var forgotUsernameButton: UIButton!
    
    @IBOutlet weak var Username: UITextField!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    @IBAction func forgotUsernameAction(_ sender: Any?) {
        performSegue(withIdentifier: "forgotUsernameOrPassword", sender: sender)
    }
    
    @IBAction func forgotPasswordAction(_ sender: Any?) {
        performSegue(withIdentifier: "forgotUsernameOrPassword", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = Username.text
        
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = Username.text
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

