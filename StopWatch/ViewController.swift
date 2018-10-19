//
//  ViewController.swift
//  StopWatch
//
//  Created by Serkan Özdemir on 19.10.2018.
//  Copyright © 2018 Serkan Özdemir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 0.0
    var timer = Timer()
    var isTimerActive = false
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBAction func startTimer(_ sender: Any) {
        if isTimerActive {return}
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        updateTimer()
    }
    
    @IBAction func pauseTimer(_ sender: Any) {
        timer.invalidate()
        isTimerActive = false
    }
    
    @IBAction func resetTimer(_ sender: Any) {
        timer.invalidate()
        isTimerActive = false
        counter = 0.0
        timeLabel.text = String(counter)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

   @objc func updateTimer() {
        counter += 0.1
        timeLabel.text = String(format: "%.1f", counter)
    }

}

