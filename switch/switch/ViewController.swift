//
//  ViewController.swift
//  switch
//
//  Created by Li on 26.08.2018.
//  Copyright © 2018 Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let mySwitch = UISwitch()
    let mySwitch2 = UISwitch()
    let button = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mySwitch.frame = CGRect(x: 100, y: 100, width: 0, height: 0)
        self.view.addSubview(self.mySwitch)
        self.mySwitch.setOn(true, animated: true)
        self.mySwitch.addTarget(self, action: #selector(switchChange(paramTarget:)), for: .valueChanged)
        
        self.mySwitch2.frame = CGRect.zero
        self.mySwitch2.center = self.view.center
        self.view.addSubview(self.mySwitch2)
        //border выключенного состояния
        self.mySwitch2.tintColor = UIColor.brown
        
        self.mySwitch2.thumbTintColor = UIColor.red
        self.mySwitch2.onTintColor = UIColor.yellow
        
        
        self.button.frame = CGRect(x: 150, y: 150, width: 150, height: 100)
        self.button.backgroundColor = UIColor.orange
        self.button.setTitle("ok", for: .normal)
        self.button.setTitle("down", for: .highlighted)
        
        self.view.addSubview(button)
        
        self.mySwitch2.addTarget(self, action: #selector(target(paramTarget:)), for: .valueChanged)
    }
    
    @objc func switchChange(paramTarget: UISwitch) {
        print("param is =", paramTarget)
        
        if paramTarget.isOn {
            print("is on")
        } else {
            print("off")
        }
    }
    
    
    
    @objc func target(paramTarget: UISwitch) {
        //огранечения для действий пользователю
        if paramTarget.isOn {
            self.button.isUserInteractionEnabled = false
        } else {
            self.button.isUserInteractionEnabled = true
        }
    }

}

