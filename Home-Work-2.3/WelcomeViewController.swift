//
//  SecondViewController.swift
//  Home-Work-2.3
//
//  Created by Татьяна Татьяна on 25.05.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var nameUser: String?
    var passWordUser: String?
    
    @IBOutlet weak var LabelWelcom: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let nameUser = self.nameUser else { return }
        guard let passWordUser = self.passWordUser else { return }
        
        LabelWelcom.text = "Welcome, \(nameUser)!"

        // Do any additional setup after loading the view.
    }
    

    @IBAction func LogOutTap(_ sender: UIButton) {
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
