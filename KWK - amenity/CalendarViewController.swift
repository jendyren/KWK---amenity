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

    @IBOutlet weak var dayJournalEntry: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calendar.delegate = self
        // Do any additional setup after loading the view.
    }
        
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition:
        //displays the date in our window
        FSCalendarMonthPosition) {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM-dd-YYYY"
        let string = formatter.string(from: date)
        print("\(string)")
        
        //experiment
        let test = journalEntry()
               //swift.setEntry(givenEntry: "Learn Swift")
               //swift.setDate(givenDate: "06-14-2002")
               test.entry = "Today, I was feeling a little anxious because of a project that I was behind on. I realized that taking a deep breath and remembering that there are many beautiful and wonderful things in my life, and that this project isn't the determinent of my success, was a really great way to recenter my priorities and find my calm."
               test.date = "07-23-2020"
               journal.append(test)
        
        for entry in journal{
            print("\(entry.date)")
             if "\(entry.date)" == string {
                print("match")
                dayJournalEntry.text = entry.entry

                navigationController?.popViewController(animated: true)
            }
            
        }
 
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
