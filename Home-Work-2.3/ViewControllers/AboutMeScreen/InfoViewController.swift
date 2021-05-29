//
//  InfoViewController.swift
//  Home-Work-2.3
//
//  Created by Татьяна Татьяна on 29.05.2021.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var labelNameUser: UILabel!
    @IBOutlet weak var textAboutUser: UITextView!
    let user = User.getUser()
    
    var nameAbout: String?
    var passAbout: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let nameAbout = self.nameAbout else { return }
        guard let passAbout = self.passAbout else { return }
        
        labelNameUser.text = "Information about:\n\(user.person.fullName)"
        
        textAboutUser.text = " Login: \(nameAbout)\n Password: \(passAbout)\n Name: \(user.person.name)\n Midlname: \(user.person.midlname)\n Surname: \(user.person.surname)\n Age: \(user.person.age)\n Height: \(user.person.height)\n Weight: \(user.person.weight)"
        // Do any additional setup after loading the view.
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
