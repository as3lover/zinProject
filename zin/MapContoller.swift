//
//  MapContoller.swift
//  zin
//
//  Created by Morteza on 5/19/1396 AP.
//  Copyright © 1396 Pasys. All rights reserved.
//

import UIKit

class MapContoller: UIViewController {
    
    @IBOutlet weak var origin: UITextField!
    @IBOutlet weak var dest: UITextField!
    
    @IBOutlet weak var topbar: topImage!
    @IBOutlet weak var map: UIImageView!
    
    @IBOutlet weak var greenButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let screenSize: CGRect = UIScreen.main.bounds
        let w = screenSize.width
        let p = w / 375
        
        origin.font = origin.font?.withSize(14 * p)
        dest.font = dest.font?.withSize(14 * p)
        greenButton.titleLabel?.font = greenButton.titleLabel?.font?.withSize(15 * p)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

