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
    
    @IBOutlet weak var countDownLabel: UILabel!
    @IBOutlet weak var LabelWelcom: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // tow values from fest screen
        guard let nameUser = self.nameUser else { return }
        guard let passWordUser = self.passWordUser else { return }
        LabelWelcom.text = "Welcome, \(nameUser) we are glad to see you to the ranks of space pioneers!"
        
        // added backgrund music
        let AssortedMusics = NSURL(fileURLWithPath: Bundle.main.path(forResource: "kosmos", ofType: "mp3")!)
        AudioPlayer = try! AVAudioPlayer(contentsOf: AssortedMusics as URL)
        AudioPlayer.prepareToPlay()
        AudioPlayer.numberOfLoops = -1
        AudioPlayer.play()
        
        tameToDay() 
    }
    
    func tameToDay() {
        // here we set the current date
        let date = NSDate()
        let calendar = Calendar.current
        let components = calendar.dateComponents([.hour, .minute, .month, .year, .day], from: date as Date)

        let currentDate = calendar.date(from: components)

        let userCalendar = Calendar.current

        // here we set the due date. When the timer is supposed to finish
        let competitionDate = NSDateComponents()
        competitionDate.year = 2025
        competitionDate.month = 4
        competitionDate.day = 12
        competitionDate.hour = 00
        competitionDate.minute = 00
        let competitionDay = userCalendar.date(from: competitionDate as DateComponents)!

        //here we change the seconds to hours,minutes and days
        let CompetitionDayDifference = calendar.dateComponents([.day, .hour, .minute], from: currentDate!, to: competitionDay)

        //finally, here we set the variable to our remaining time
        let daysLeft = CompetitionDayDifference.day
        let hoursLeft = CompetitionDayDifference.hour
        let minutesLeft = CompetitionDayDifference.minute
        countDownLabel.text = "Start mission: \(daysLeft ?? 0) Days, \(hoursLeft ?? 0) Hours, \(minutesLeft ?? 0) Minutes"
    }

    @IBAction func LogOutTap(_ sender: UIButton) {
    }

}
