//
//  DictViewController.swift
//  SignMeUp
//
//  Created by TANISHQ on 23/11/24.
//

import UIKit

class DictViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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
    @IBAction func alphabetButtonTapped(_ sender: UIButton) {
        
        performSegue(withIdentifier: "showAlphabetTable", sender: self)
        
    }
    
}
