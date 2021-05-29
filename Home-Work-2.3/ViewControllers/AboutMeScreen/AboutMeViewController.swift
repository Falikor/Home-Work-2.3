//
//  AboutMeViewController.swift
//  Home-Work-2.3
//
//  Created by Татьяна Татьяна on 28.05.2021.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet weak var labelQuestion: UILabel!
    
    var nameAbout: String?
    var passAbout: String?
    let questions = Question.getQuestion()
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let nameAbout = self.nameAbout else { return }
        guard let passAbout = self.passAbout else { return }
        print(questions.first!.title)
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
