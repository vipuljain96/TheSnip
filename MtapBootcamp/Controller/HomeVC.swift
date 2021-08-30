//
//  HomeVCViewController.swift
//  MtapBootcamp
//
//  Created by Vipul Jain on 24/08/21.
//

import UIKit

class HomeVC: UIViewController,UITableViewDataSource,UITableViewDelegate {
    let posts = PostData().posts
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return posts.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as? CustomCell
            cell?.nameLabel.text = posts[indexPath.row].name
            cell?.descriptionLabel.text = posts[indexPath.row].description
            cell?.hashTagsLabel.text = posts[indexPath.row].hashTags
            cell?.locationLabel.text = posts[indexPath.row].location
            cell?.priceLabel.text = "Rs. \(posts[indexPath.row].price)"
            return cell!
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 420
        }
    
        override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
