//
//  ViewController.swift
//  practice_storyboard_stackView
//
//  Created by bang_hyeonseok on 2023/01/30.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var aLabel: UILabel!
    @IBOutlet weak var bLabel: UILabel!
    
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        bLabel.text = "오른쪽 레이블"

        // Do any additional setup after loading the view.
    }

    func plus() {
        count+=1
        aLabel.text = "\(count)"
    }
    
    @IBAction func bTouchUpBtn(_ sender: Any) {
        bLabel.isHidden = bLabel.isHidden ? false : true
    }
    @IBAction func aTouchUpBtn(_ sender: Any) {
        plus()
    }
}

