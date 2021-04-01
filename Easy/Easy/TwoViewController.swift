//
//  TwoViewController.swift
//  Easy
//
//  Created by MacBook Pro on 27/3/21.
//

import UIKit

class TwoViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{

    var firstimage2 = [UIImage(named: "Saudiaribia"),
                   UIImage(named: "Bangladesh"),
                   UIImage(named: "Afgansthan"),
                   UIImage(named: "Iran"),
                   UIImage(named: "Bhutan"),
                   UIImage(named: "Pakisthan"),
                   UIImage(named: "Japan")
    ]
    
    var ForSetName2 = ["Saudiaribia","Bangladesh","Afgansthan","Iran","Bhutan","Pakisthan","Japan"]
    
    var Nnn = ["Riyad","Dhaka","Kabul","Tehran","Thimpu","Islamabad","Tukiyo"]
   

    @IBOutlet weak var tableview2: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableview2.delegate = self
        self.tableview2.dataSource = self
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell2 = tableview2.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! TwoTableViewCell
        
        cell2.labeltwo.text = ForSetName2[indexPath.row]
        cell2.imageview2.image = firstimage2[indexPath.row]
        
        return cell2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        

        let storyboard2 = UIStoryboard(name: "Main", bundle: nil)
        
       // if indexPath.row == 0{
            
            
            let vc2 = storyboard2.instantiateViewController(identifier: "thirdViewController") as! thirdViewController
            
            vc2.name = Nnn[indexPath.row]
            
            navigationController?.pushViewController(vc2, animated: true)
        
        
    }
    
}
