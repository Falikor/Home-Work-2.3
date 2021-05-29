//
//  ViewController.swift
//  Home-Work-2.3
//
//  Created by Татьяна Татьяна on 29.05.2021.
//

import UIKit

class UITabBarViewController: UITabBarController {
    
    var nameUser: String?
    var passWordUser: String?
    let welcomeVC = WelcomeViewController()
    let navigationVC = NavigationController()
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let viewControllers =  [welcomeVC, navigationVC]
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
