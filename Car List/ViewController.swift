//
//  ViewController.swift
//  Car List
//
//  Created by Ramanath Suthakar on 25/02/2018.
//  Copyright © 2018 And Digital Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var carImage: UIImageView!
    @IBOutlet weak var CARtitle: UILabel!
    @IBOutlet weak var car_colour: UILabel!
    @IBOutlet weak var horsepowerlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "CarCell", for: indexPath)
        
        let car = cars[indexPath.row]
        
        cell.textLabel?.text = car["title"] as? String
        cell.imageView?.image = UIImage(named: car["image_name"] as! String)
        
        return cell
    }
    
    let cars: [[String:Any]] = {
        
        var car_1: [String:Any] = [
            "title" : "Compact Car: Chevrolet Cruze",
            "coluor" : "Blue",
            "hp" : 250,
            "image_name": "car_1"
        ]
        
        var car_2: [String:Any] = [
            "title" : "Midsized Sedan: Kia Optima",
            "coluor" : "White",
            "hp" : 260,
            "image_name": "car_2"
        ]
        
        var car_3: [String:Any] = [
            "title" : "Large Sedan: Chevrolet Impala",
            "coluor" : "Red",
            "hp" : 220,
            "image_name": "car_3"
        ]
        
        var car_4: [String:Any] = [
            "title" : "Midsized SUV: Toyota Highlander",
            "coluor" : "khaki",
            "hp" : 290,
            "image_name": "car_4"
        ]
        
        var car_5: [String:Any] = [
            "title" : "Luxury SUV: Audi Q7",
            "coluor" : "Blue",
            "hp" : 280,
            "image_name": "car_5"
        ]
        
        return [car_1, car_2, car_3, car_4, car_5]
        
    }()
}

