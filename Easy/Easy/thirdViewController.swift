//
//  thirdViewController.swift
//  Easy
//
//  Created by MacBook Pro on 27/3/21.
//

import UIKit

class thirdViewController: UIViewController {
    
    var name = String()
    
    @IBOutlet weak var thridNamelabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "SaudiAriabia"
        
        thridNamelabel.text = ("\(name)")
    }
    

}
