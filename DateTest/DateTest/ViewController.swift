//
//  ViewController.swift
//  DateTest
//
//  Created by Li on 27.08.2018.
//  Copyright © 2018 Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let picker = UIPickerView()
    
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.center = view.center
        datePicker.center = view.center
        //datePicker.locale = Locale.init(identifier: "ru_RU")
        
//        datePicker.datePickerMode = .date
        
        datePicker.datePickerMode = .countDownTimer
        
        //подписаться
        //        picker.dataSource = self
        //        picker.delegate = self
        //self.view.addSubview(picker)
        
        self.view.addSubview(datePicker)
        var oneYearTime = TimeInterval()
        oneYearTime = 365 * 24 * 60 * 60
        let todayDate = Date()
        let oneYearFromToday = todayDate.addingTimeInterval(oneYearTime)
        let twoYearFromToday = todayDate.addingTimeInterval(2 * oneYearTime)
        datePicker.minimumDate = oneYearFromToday
        datePicker.maximumDate = twoYearFromToday
        
        datePicker.countDownDuration = 2 * 60
        datePicker.addTarget(self, action: #selector(datePickerChanged(paramsForDatePicker:)), for: .valueChanged)
        
    }
    
    @objc func datePickerChanged(paramsForDatePicker: UIDatePicker) {
        if paramsForDatePicker.isEqual(self.datePicker) {
            print("dateChanged = ", paramsForDatePicker.date)
        }
    }
    
}



//extension ViewController: UIPickerViewDataSource {
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 1
//    }
//
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return 10
//    }
//}
//
//extension ViewController: UIPickerViewDelegate {
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        let result = "row = \(row)"
//        return result
//    }
//}
