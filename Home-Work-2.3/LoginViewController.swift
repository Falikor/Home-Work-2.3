//
//  ViewController.swift
//  Home-Work-2.3
//
//  Created by Татьяна Татьяна on 25.05.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var textName: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? WelcomeViewController else {return}
        dvc.nameUser = textName.text
    }
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        textName.text = nil
        textPassword.text = nil
        
    }

    @IBAction func logInTap(_ sender: UIButton) {
    }
    
    @IBAction func ForgotUNTap(_ sender: UIButton) {
    }
    
    @IBAction func ForgotPTap(_ sender: UIButton) {
    }
    
}

