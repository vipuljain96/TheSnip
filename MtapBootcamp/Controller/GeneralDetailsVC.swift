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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
