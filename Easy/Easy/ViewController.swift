//
//  ViewController.swift
//  Easy
//
//  Created by MacBook Pro on 27/3/21.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    var firstimage = [UIImage(named: "Asia"),
                   UIImage(named: "Africa"),
                   UIImage(named: "Antarctica"),
                   UIImage(named: "Australia"),
                   UIImage(named: "Europe"),
                   UIImage(named: "North America"),
                   UIImage(named: "South America")
    ]
    
    var ForSetName = ["Asia","Africa","Antartica","Australia","Europ","North America","South America"]
   
    
    @IBOutlet weak var HereisTableview1: UITableView!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.HereisTableview1.delegate = self
        self.HereisTableview1.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ceell = HereisTableview1.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! TableViewCell
        
        ceell.imageview1.image = firstimage[indexPath.row]
        ceell.labelcontinent1.text = ForSetName[indexPath.row]
        return ceell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if indexPath.row == 0{
            
            let vc = storyboard.instantiateViewController(identifier: "TwoViewController")
            
            navigationController?.pushViewController(vc, animated: true)
        }
     
    }


}

