//
//  GiaiPhuongTrinhBac2.swift
//  Day02
//
//  Created by Thuc Nguyen Minh on 8/28/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class GiaiPhuongTrinhBac2: UIViewController {
    @IBOutlet weak var soA: UITextField!
    @IBOutlet weak var soB: UITextField!
    @IBOutlet weak var soC: UITextField!
    @IBOutlet weak var result: UITextView!
    @IBAction func btnClick(sender: AnyObject) {
        var numberA = NSString(string: soA.text)
        var numberB = NSString(string: soB.text)
        var numberC = NSString(string: soC.text)
        var delta : Double = numberB.doubleValue * numberB.doubleValue - 4 * numberA.doubleValue * numberC.doubleValue
        if (delta < 0){
            result.text = "Phương trình vô nghiệm"
        }
        else if (delta == 0){
            result.text = "Phương trình có 1 nghiệm kép x1 = x2 =  \(-numberB.doubleValue / 2 * numberA.doubleValue)"
        }
        else {
            result.text = "Phương trình có 2 nghiệm phân biệt x1 =  \((-numberB.doubleValue + sqrt(delta))/2 * numberA.doubleValue)    và    x2 =  \((-numberB.doubleValue - sqrt(delta))/2 * numberA.doubleValue)"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
