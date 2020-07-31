
//
//  AddViewController.swift
//  KWK - amenity
//
//  Created by Jendy Ren on 7/29/20.
//  Copyright © 2020 Jendy Ren. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    var previousVC = JournalTableViewController()
    @IBOutlet weak var inputEntry: UITextView!
    @IBOutlet weak var inputDate: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func pickDate(_ sender: Any) {
        
    }
    
    @IBAction func doneTapped(_ sender: Any) {
        let entry = journalEntry()

        if let inputEntry = inputEntry.text {
            entry.entry = inputEntry
        }
        
        journal.append(entry)
        previousVC.tableView.reloadData()
        
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
