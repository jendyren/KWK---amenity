//
//  CalendarViewController.swift
//  KWK - amenity
//
//  Created by Jendy Ren on 7/29/20.
//  Copyright © 2020 Jendy Ren. All rights reserved.
//

import FSCalendar

import UIKit

class CalendarViewController: UIViewController, FSCalendarDelegate {
    
    
    @IBOutlet var calendar: FSCalendar!

    override func viewDidLoad() {
        super.viewDidLoad()
        calendar.delegate = self
        // Do any additional setup after loading the view.
    }
        
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        print("selected")
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
