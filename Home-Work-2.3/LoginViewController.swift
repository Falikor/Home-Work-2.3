//
//  ViewController.swift
//  Home-Work-2.3
//
//  Created by Татьяна Татьяна on 25.05.2021.
//

import UIKit



class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textName: UITextField!
    @IBOutlet weak var textPassword: UITextField!

    var nameSeve: String?
    var paswordSave: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        textName.delegate = self
        textPassword.delegate = self
        textFieldShouldReturn(textName)
        textFieldShouldReturn(textPassword)
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.tag == 2 {
            textName.resignFirstResponder()
            textName.returnKeyType = .next
        } else if textField.tag == 1 {
            textPassword.becomeFirstResponder()
            textPassword.enablesReturnKeyAutomatically = true
            textPassword.returnKeyType = .done
            
        }
        return true // пока не понял
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? WelcomeViewController else {return}
        dvc.nameUser = textName.text
        dvc.passWordUser = textPassword.text

    }
    
    
    private func alterVCName() {
        guard let nameSeve = nameSeve.self else { return }
        let alertVCMax = UIAlertController(title: "Ooops", message: "your name - \(nameSeve)", preferredStyle: .alert)
        alertVCMax.addAction(UIAlertAction(title: "Thanks", style: .default))
        present(alertVCMax, animated: true)
    }
    private func alterVCPass() {
        guard let paswordSave = paswordSave.self else { return }
        let alertVCMax = UIAlertController(title: "Ooops", message: "your password - \(paswordSave)", preferredStyle: .alert)
        alertVCMax.addAction(UIAlertAction(title: "Thanks", style: .default))
        present(alertVCMax, animated: true)
    }
    

    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
    
        textName.text = nil
        textPassword.text = nil

        guard let svc = segue.source as? WelcomeViewController else {return}
        nameSeve = svc.nameUser
        paswordSave = svc.passWordUser
        

    }

    @IBAction func logInTap(_ sender: UIButton) {
        
    }
    
    @IBAction func ForgotUNTap(_ sender: UIButton) {
        alterVCName()
    }
    
    @IBAction func ForgotPTap(_ sender: UIButton) {
        alterVCPass()
    }
    
}
/*
extension UIViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
}
*/
