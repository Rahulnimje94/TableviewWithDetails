//
//  ViewController.swift
//  Task-1
//
//  Created by Anand on 04/02/18.
//  Copyright © 2018 Rahul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let Products = ["iPhone-X", "iPadPro", "MacBookPro", "iMac"]

    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CoustomCell
        cell.productLbl.text = Products[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sec = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        sec.selectedRow = indexPath.row
        navigationController?.pushViewController(sec, animated: true)
    }

}
