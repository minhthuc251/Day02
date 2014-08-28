//
//  DrawZigZag.swift
//  Day02
//
//  Created by techmaster on 8/19/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class DrawZigZag: UIViewController {

    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnClick(sender: AnyObject) {
        var result = ""
        var row = (arc4random() % 4)+2
        if (row <= 3){var col = (arc4random()%2) + 4        }
        else if ( row > 4 && row <= 6 ) {var col = arc4random() % 2}
        else if (row == 4) {var col = arc4random() % 3 }
        var k = 0
        while(row != 0){
            for e in 0...2{
                //println("\(row)")
                for i in 0..<row-1 { result += " " }
            
                result += "*"
            
                for f in 0..<k { result += " " }
                result += "*"
            
                for i in 0..<row-1 { result += " " }
                
            }
            
            result += "\n"
            row--
            k = k + 2
            }
        self.result.text = result
    }
}
