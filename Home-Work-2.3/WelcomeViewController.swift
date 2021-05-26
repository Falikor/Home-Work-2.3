//
//  SecondViewController.swift
//  Home-Work-2.3
//
//  Created by Татьяна Татьяна on 25.05.2021.
//

import UIKit
import AVFoundation

class WelcomeViewController: UIViewController {
    // music backgrund
    var AudioPlayer = AVAudioPlayer()
    
    var nameUser: String?
    var passWordUser: String?
    
    @IBOutlet weak var LabelWelcom: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // tow values from fest screen
        guard let nameUser = self.nameUser else { return }
        guard let passWordUser = self.passWordUser else { return }
        LabelWelcom.text = "Welcome, \(nameUser)!"
        
        // added backgrund music
        let AssortedMusics = NSURL(fileURLWithPath: Bundle.main.path(forResource: "kosmos", ofType: "mp3")!)
        AudioPlayer = try! AVAudioPlayer(contentsOf: AssortedMusics as URL)
        AudioPlayer.prepareToPlay()
        AudioPlayer.numberOfLoops = -1
        AudioPlayer.play()
    }
    

    @IBAction func LogOutTap(_ sender: UIButton) {
    }

}
