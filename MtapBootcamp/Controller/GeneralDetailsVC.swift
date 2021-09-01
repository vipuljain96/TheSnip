//
//  GeneralDetailsVC.swift
//  MtapBootcamp
//
//  Created by Vipul Jain on 24/08/21.
//

import UIKit

class GeneralDetailsVC: UIViewController {

    @IBOutlet weak var SubmitGeneralDetailsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SubmitGeneralDetailsButton.roundedButton()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBAction func genderDropDownAlert(_ sender: Any) {
        let alert = UIAlertController(title: "", message: "Please Select Your Gender", preferredStyle: .actionSheet)
               //        alert.
            alert.addAction(UIAlertAction(title: "Male", style: .default, handler: Handler2))
            alert.addAction(UIAlertAction(title: "Female", style: .default, handler: Handler2))
            self.present(alert, animated: true, completion: nil)
    }
   
    @IBAction func ageDropDownAlert(_ sender: Any) {
        let alert = UIAlertController(title: "", message: "Please Select Your Age", preferredStyle: .actionSheet)
               //        alert.
            alert.addAction(UIAlertAction(title: "18", style: .default, handler: Handler))
            alert.addAction(UIAlertAction(title: "19", style: .default, handler: Handler))
            alert.addAction(UIAlertAction(title: "20", style: .default, handler: Handler))
            alert.addAction(UIAlertAction(title: "21", style: .default, handler: Handler))
            alert.addAction(UIAlertAction(title: "22", style: .default, handler: Handler))
            alert.addAction(UIAlertAction(title: "23", style: .default, handler: Handler))
            alert.addAction(UIAlertAction(title: "24", style: .default, handler: Handler))
            alert.addAction(UIAlertAction(title: "25", style: .default, handler: Handler))
            alert.addAction(UIAlertAction(title: "26", style: .default, handler: Handler))
            alert.addAction(UIAlertAction(title: "27", style: .default, handler: Handler))
            alert.addAction(UIAlertAction(title: "28", style: .default, handler: Handler))
               self.present(alert, animated: true, completion: nil)
    }
    func Handler(alert: UIAlertAction!) {
           ageLabel.text = alert.title ?? "Select"
       }
    func Handler2(alert: UIAlertAction!) {
           genderLabel.text = alert.title ?? "Select"
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
