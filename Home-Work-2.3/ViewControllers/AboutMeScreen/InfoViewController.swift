//
//  InfoViewController.swift
//  Home-Work-2.3
//
//  Created by Татьяна Татьяна on 29.05.2021.
//

import UIKit

class InfoViewController: UIViewController {
    @IBOutlet weak var labelNameUser: UILabel!
    
    let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelNameUser.text = user.person.fullName
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
