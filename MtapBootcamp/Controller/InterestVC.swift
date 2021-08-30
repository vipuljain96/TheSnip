//
//  InterestVC.swift
//  MtapBootcamp
//
//  Created by Vipul Jain on 24/08/21.
//

import UIKit

class InterestVC: UIViewController {

    @IBOutlet weak var SubmitInterestButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        SubmitInterestButton.roundedButton()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func InterestBackButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
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
