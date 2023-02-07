//
//  ViewController.swift
//  mvcPractice
//
//  Created by bang_hyeonseok on 2023/01/30.
//

import UIKit

class ViewController: UIViewController {

    var currentDate = Date()

    //MARK: - IBActions
    @IBOutlet weak var dateTimeLabel: UILabel!
    
    @IBAction func onYesterday(_ sender: Any) {
    }
    @IBAction func onNow(_ sender: Any) {
    }
    @IBAction func onTomorrow(_ sender: Any) {
    }
    
    // MARK: - Life-cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

