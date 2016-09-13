//
//  ViewController.swift
//  SKATE
//
//  Created by addob_000 on 8/24/16.
//  Copyright © 2016 BillCornell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    @IBOutlet weak var picker: UIPickerView!
    var pickerData : [String] = [String]()
    
    @IBOutlet weak var skater1: UIButton!
    @IBOutlet weak var skater2: UIButton!
    
    @IBOutlet weak var skate1: UILabel!
    @IBOutlet weak var skate2: UILabel!
    
    @IBOutlet weak var addLetter1: UIButton!
    @IBOutlet weak var addLetter2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.picker.delegate = self
        self.picker.dataSource = self
        
        
        // Input data into the Array:
        pickerData = ["Ollie", "BS Pop Shuvit", "FS Pop Shuvit", "Kickflip", "Heelflip", "Treflip", "Inward Heelflip", "Hardflip", "BS Bigspin", "FS Bigspin", "BS 360 Pop Shuvit", "FS 360 Pop Shuvit" ].sort()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // The number of columns of data
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    // Catpure the picker view selection
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // This method is triggered whenever the user makes a change to the picker selection.
        // The parameter named row and component represents what was selected.
    }
    
}

