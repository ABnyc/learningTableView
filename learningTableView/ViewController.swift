//
//  ViewController.swift
//  learningTableView
//
//  Created by Arpita Bhatia on 7/20/16.
//  Copyright © 2016 Arpita Bhatia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let dwarves = ["Happy", "Sleepy", "Sneezy", "Dopey", "Grumpy", "Bashful", "Doc"]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = UITableViewAutomaticDimension
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return dwarves.count
    }
    
   
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! TsumCellTableViewCell!
        cell.dwarfName?.text = "\(dwarves[indexPath.row])"
        let imageURL = NSURL(string: "https://pixabay.com/static/uploads/photo/2016/07/11/21/23/water-lily-1510707_960_720.jpg")
        let imageData = NSData(contentsOfURL: imageURL!)
        cell.dwarfFace?.image = UIImage(data: imageData!)
        return cell
    }
    

    
}

