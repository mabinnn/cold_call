//
//  ViewController.swift
//  coldcall_i
//
//  Created by Marvin Alganes on 5/11/17.
//  Copyright © 2017 Marvin Alganes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var cohortArray = ["Marvin", "Masato", "Kevin", "Shruta", "Kavya", "Tahim",
                       "Charles", "Colin", "Kyle", "Frank", "Heather", "Sharon"]
    
    
    
    @IBAction func coldCallButton(_ sender: UIButton) {
        let idx = Int(arc4random_uniform(UInt32(cohortArray.count)))
        print("Choosing name by clicking tag \(sender.tag)")

        nameLabel.text = cohortArray[idx]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Ready?"
    }


}

