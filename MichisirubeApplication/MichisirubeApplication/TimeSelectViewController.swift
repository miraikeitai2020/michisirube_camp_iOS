//
//  TimeSelectViewController.swift
//  MichisirubeApplication
//
//  Created by 工藤海斗 on 2020/09/06.
//

import UIKit

class TimeSelectViewController: UIViewController {

    @IBOutlet weak var timeDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeDatePicker.locale = Locale(identifier: "ja_JP")
    }

}
