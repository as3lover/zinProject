//
//  MenuController.swift
//  zin
//
//  Created by Morteza on 5/19/1396 AP.
//  Copyright © 1396 Pasys. All rights reserved.
//

import UIKit

class MenuController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    
    @IBOutlet weak var tabelView: UITableView!
    let list = ["۰۹۳۹۱۰۳۶۷۱۲", "پروفایل", "نمایش سفرها", "پیام ها", "اعتبار", "سرویس های فعال", "خدمات زین", "تنظیمات" , "نسخه ۱.۰"];
    let images = ["",  "home", "trips", "messages", "credit", "baloonGreen", "zinServices", "settingsMenu", ""]
    
    var p:CGFloat = 0.1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tabelView.delegate = self
        tabelView.dataSource = self
        tabelView.separatorStyle = .none
        tabelView.allowsSelection = false
        tabelView.alwaysBounceVertical = false
        
        let screenSize: CGRect = UIScreen.main.bounds
        let w = screenSize.width
        p = w / 375
        
        tabelView.rowHeight = 60*p
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return (list.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = indexPath.row
        
        if(row > 0 && row<list.count-1)
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath) as! MenuCell
            cell.label.text = list[row]
            let img:UIImageView = cell.icon
            img.image = UIImage(named: images[row])
            cell.label.font = cell.label.font.withSize(17*p)
            
            return cell
        }
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TextCell", for: indexPath) as! TextCell
            cell.label.text = list[row]
            if(row == list.count-1)
            {
                cell.label.font = cell.label.font.withSize(14*p)
                cell.label.textColor = UIColor.gray
            }
            else
            {
                cell.label.font = cell.label.font.withSize(17*p)
            }
            
            return cell
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tabelView.reloadData()
    }
    
    
}

