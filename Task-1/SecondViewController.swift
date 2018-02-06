//
//  SecondViewController.swift
//  Task-1
//
//  Created by Anand on 04/02/18.
//  Copyright © 2018 Rahul. All rights reserved.
//

import UIKit


class SecondViewController: UIViewController {
    
    var selectedRow: Int?

    @IBOutlet weak var secondTable: UITableView!
    
    
    var details: [[String: String]] = {
        let array = [[String: String]]()
        return array
    }()
    
    let mainArray = [["image": "iPhone-X", "title": "iPhoneX"], ["image": "iPadPro", "title": "iPadPro"], ["image": "MacBookPro", "title": "MacBookPro"], ["image": "iMac", "title": "iMac"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        guard let row = selectedRow else {
            return
        }
        details = [mainArray[row]]
        secondTable.reloadData()
    }

}

extension SecondViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return details.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SecondCoustomCell", for: indexPath) as! SecondCoustomCell
        
        let detailsArray = details[indexPath.row]
        
        guard let image = detailsArray["image"], let title = detailsArray["title"] else {
            return cell
        }
        
        cell.detailImage.image = UIImage(named: image)
        cell.detailLabel.text = title
        
        return cell
    }
    

}
