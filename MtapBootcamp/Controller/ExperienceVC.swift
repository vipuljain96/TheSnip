//
//  ExperienceVC.swift
//  MtapBootcamp
//
//  Created by Vipul Jain on 24/08/21.
//

import UIKit

class ExperienceVC: UIViewController {

    @IBOutlet weak var BeginnerExperienceButton: UIButton!
    @IBOutlet weak var IntermediateExperienceButton: UIButton!
    @IBOutlet weak var ExpertExperienceButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        BeginnerExperienceButton.roundedButton()
        IntermediateExperienceButton.roundedButton()
        ExpertExperienceButton.roundedButton()
        // Do any additional setup after loading the view.
    }
    @IBAction func ExperienceBackButton(_ sender: Any) {
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
