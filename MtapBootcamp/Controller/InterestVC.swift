//
//  InterestVC.swift
//  MtapBootcamp
//
//  Created by Vipul Jain on 24/08/21.
//

import UIKit

class InterestVC: UIViewController {

    @IBOutlet weak var itemLikeLabel: UILabel!
    @IBOutlet weak var favCategoryLabel: UILabel!
    @IBOutlet weak var SubmitInterestButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        SubmitInterestButton.roundedButton()
        // Do any additional setup after loading the view.
    }
    @IBAction func itemLikeButton(_ sender: Any) {
        let alert = UIAlertController(title: "DIYs", message: "Please Choose your DIY", preferredStyle: .actionSheet)
               //        alert.
               alert.addAction(UIAlertAction(title: "Skirt", style: .default, handler: Handler3))
               alert.addAction(UIAlertAction(title: "Shirt", style: .default, handler: Handler3))
               alert.addAction(UIAlertAction(title: "Pants", style: .default, handler: Handler3))
               alert.addAction(UIAlertAction(title: "Scarf", style: .default, handler: Handler3))
               self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func favCategoryButton(_ sender: Any) {
        let alert = UIAlertController(title: "Fav. DIYs Category", message: "Please Choose your Fav DIY Category", preferredStyle: .actionSheet)
                
                alert.addAction(UIAlertAction(title: "Bedazzling", style: .default, handler: Handler4))
                alert.addAction(UIAlertAction(title: "Tie Die", style: .default, handler: Handler4))
                alert.addAction(UIAlertAction(title: "Embroidery", style: .default, handler: Handler4))
                self.present(alert, animated: true, completion: nil)
    }
    @IBAction func InterestBackButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func Handler3(alert: UIAlertAction!) {
          itemLikeLabel.text = alert.title ?? "Select"
      }
      func Handler4(alert: UIAlertAction!) {
          favCategoryLabel.text = alert.title ?? "Select"
      }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
