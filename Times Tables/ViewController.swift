//
//  ViewController.swift
//  Times Tables
//
//  Created by Michele Galvagno on 15/11/2018.
//  Copyright © 2018 Michele Galvagno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    // Properties
    var baseNumber = 1
    var rows = [Int]()

    // Outlets & Actions
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var table: UITableView!
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        baseNumber = Int(slider.value)
        table.reloadData()
    }
    
    // Data Source Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        cell.textLabel?.text = String(baseNumber * rows[indexPath.row])
        
        return cell
    }
    
    // Functionality
    override func viewDidLoad() {
        super.viewDidLoad()
        generateNumbers()
        
    }
    
    func generateNumbers() {
        let max = 50
        for i in 1...max {
            rows.append(i)
        }
    }


}

