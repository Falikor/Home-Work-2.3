//
//  NewsViewController.swift
//  Home-Work-2.3
//
//  Created by Татьяна Татьяна on 26.05.2021.
//

import UIKit
import WebKit

class NewsViewController: UIViewController {
    
    var numberOfButton: Int?
    

    @IBOutlet weak var viewWeb: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let numberOfButton = numberOfButton.self else {return}
        if numberOfButton == 1 {
            let url = URL(string: "https://www.roscosmos.ru/102/")
            let regist = URLRequest(url: url!)
            viewWeb.load(regist)
        } else if numberOfButton == 2 {
            let url = URL(string: "https://www.nasa.gov/news/releases/latest/index.html")
            let regist = URLRequest(url: url!)
            viewWeb.load(regist)
        }

        // Do any additional setup after loading the view.
    }

}
