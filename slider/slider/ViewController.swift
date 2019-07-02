//
//  ViewController.swift
//  slider
//
//  Created by Li on 28.08.2018.
//  Copyright © 2018 Li. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()
    var slider = UISlider()
    
    @IBOutlet weak var volumeSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.slider.frame = CGRect(x: 0, y: 0, width: 200, height: 23)
        self.slider.center = self.view.center
        self.slider.minimumValue = 0.0
        self.slider.maximumValue = 100.0
        self.view.addSubview(slider)
        print("1")
        self.slider.addTarget(self, action: #selector(changeSlider(sender:)), for: .valueChanged)
        print("2")
        do {
            if let audioPath = Bundle.main.path(forResource: "sia", ofType: "mp3") {
                try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
                self.slider.maximumValue = Float(player.duration)
            }
        } catch  {
            print("error")
        }
        self.player.rate = 1.0
        self.player.play()
        
    }
    
    @objc func changeSlider(sender: UISlider) {
        if sender == slider {
            self.player.currentTime = TimeInterval(self.volumeSlider.value)
        }
    }
    
    
    @IBAction func playbutton(_ sender: Any) {
        self.player.play()
    }
    
    @IBAction func pauseButton(_ sender: Any) {
        self.player.pause()
    }
    
    @IBAction func sliderAction(_ sender: Any) {
        self.player.volume = self.volumeSlider.value
    }
    
}

