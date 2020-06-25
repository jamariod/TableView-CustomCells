//
//  ViewController.swift
//  TableView-CustomCells
//  Created by Jamario Davis on 6/24/20.
//  Copyright © 2020 KAYCAM. All rights reserved.
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    var myData = ["First Cell", "Second Cell", "Third Cell", "Fourth Cell", "Fifth Cell"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       let nib = UINib(nibName: "DemoTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "DemoTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    // TableView Funcs
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count 
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoTableViewCell", for: indexPath) as! DemoTableViewCell
        cell.myLabel.text = myData[indexPath.row]
        cell.myImageView.backgroundColor = .red 
        cell.myImageView.image = .checkmark
        return cell 
    }
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        myData.swapAt(sourceIndexPath.row, destinationIndexPath.row)
    }
    @IBAction func didTapSort() {
        if tableView.isEditing {
            tableView.isEditing = false
        }
        else {
            tableView.isEditing = true 
        }
    }
}















































































