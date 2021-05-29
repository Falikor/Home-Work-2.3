//
//  ViewController.swift
//  Home-Work-2.3
//
//  Created by Татьяна Татьяна on 25.05.2021.
//

import UIKit



class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var forgotUNButton: UIButton!
    @IBOutlet weak var mistakeLabel: UILabel!
    @IBOutlet weak var textName: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    
    // added values for information in WelcomeViewControler
    var nameSeve: String?
    var paswordSave: String?
    //limitations Password and Name
    private let minLength = 3
    private lazy var regex = "^(?=.*[a-z])(?=.*[A-Z])[A-Za-z]{\(minLength),}$"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textName.layer.cornerRadius = 10
        textPassword.layer.cornerRadius = 10
        logInButton.layer.cornerRadius = 10
        forgotPasswordButton.layer.cornerRadius = 20
        forgotUNButton.layer.cornerRadius = 20
        
        activLogInButton()
        
        textName.delegate = self
        textPassword.delegate = self
        textFieldShouldReturn(textName)
        textFieldShouldReturn(textPassword)
        
        
    }
    // active or deactive button
    func activLogInButton() {
        guard let textN = textName.text?.isEmpty else {return}
        guard let textP = textPassword.text?.isEmpty else {return}
        if textN == false && textP == false {
            logInButton.isEnabled = true
            logInButton.sendActions(for: .touchUpInside)
        } else {
            logInButton.isEnabled = false
        }
    }
    
    // realizatsiya button next and done in keybord
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.tag == 2 {
            textName.resignFirstResponder()
            textName.returnKeyType = .next
        } else if textField.tag == 1 {
            textPassword.becomeFirstResponder()
            textPassword.enablesReturnKeyAutomatically = true
            textPassword.returnKeyType = .done
        }
        activLogInButton()
        return true
    }
    
    // func validation password and name
    private func checkValidation(text: String) {
        guard text.count >= minLength else {
            mistakeLabel.text = ""
            return
        }
        if text.matches(regex) {
            mistakeLabel.textColor = .green
            mistakeLabel.text = "Correct characters"
        } else {
            mistakeLabel.textColor = .red
            mistakeLabel.text = "Invalid characters"
            alterVCMistake()
        }
    }
    func textField(_ textFild: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let text = (textFild.text ?? "") + string
        let res: String
        if range.length == 1 {
            let end = text.index(text.startIndex, offsetBy: text.count - 1)
            res = String(text[text.startIndex..<end])
        } else {
            res = text
        }
        checkValidation(text: res)
        textFild.text = res
        return false
    }
        

    // func for keyord end when touches screen
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if (touches.first) != nil {
            view.endEditing(true)
        }
        super .touchesBegan(touches, with: event)
    }
 
    // send information to WelcomeViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarViewController
        guard let viewControllers = tabBarController.viewControllers else {return}
    for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.nameUser = textName.text
                welcomeVC.passWordUser = textPassword.text
            } else if let navigationVC = viewController as? InfoViewController {
                navigationVC.nameAbout = textName.text
                navigationVC.passAbout = textPassword.text    }
    }
}
    
    
    // func to Forgot Name and Forgot Password, use information for WelcomeViewController. func mistake validation
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
    private func alterVCMistake() {
        let alertVCMax = UIAlertController(title: "Mistake", message: "TIncorrect characters used in password or name", preferredStyle: .alert)
        alertVCMax.addAction(UIAlertAction(title: "Thanks", style: .default))
        present(alertVCMax, animated: true)
    }
    
    // accept information for WelcomeViewController
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        //delite all text and deactivate button
        textName.text = nil
        textPassword.text = nil
        activLogInButton()

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
// check string incorrect
extension String {
    func matches(_ regex: String) -> Bool {
        return self.range(of: regex, options: .regularExpression, range: nil, locale: nil) != nil
    }
}

