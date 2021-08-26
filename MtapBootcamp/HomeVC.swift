//
//  HomeVCViewController.swift
//  MtapBootcamp
//
//  Created by Vipul Jain on 24/08/21.
//

import UIKit

class HomeVC: UIViewController,UITableViewDataSource {
    
    var dataArray:[String] = ["vipul", "sanjeet" , "sachin"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as? CustomCell
        cell?.titleLabel.text = dataArray[indexPath.row]
        return cell!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
