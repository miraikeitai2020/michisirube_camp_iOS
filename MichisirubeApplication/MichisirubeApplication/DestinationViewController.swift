//
//  DestinationViewController.swift
//  MichisirubeApplication
//
//  Created by 工藤海斗 on 2020/09/06.
//

import UIKit
import MaterialComponents.MaterialDialogs

class DestinationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let alertController = MDCAlertController(title: "Title string", message: "Message string")
        let action = MDCAlertAction(title:"OK") { (action) in print("OK") }
        alertController.addAction(action)
        present(alertController, animated:true, completion: nil)
    }
}
