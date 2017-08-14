//
//  ViewController.swift
//  zin
//
//  Created by Morteza on 5/19/1396 AP.
//  Copyright © 1396 Pasys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var serviceRequest: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let screenSize: CGRect = UIScreen.main.bounds
        let w = screenSize.width
        let p = w / 375
        
        serviceRequest.titleLabel?.font = serviceRequest.titleLabel?.font?.withSize(15 * p)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

