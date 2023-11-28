//
//  ViewController.swift
//  project1
//
//  Created by Mohamed Sayed on 28.11.23.
//

import UIKit

class ViewController: UIViewController {
    
    var fileManager = Manager()

    override func viewDidLoad() {
        super.viewDidLoad()
        fileManager.manage()
    }


}

