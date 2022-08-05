//
//  journalViewController.swift
//  finalProject
//
//  Created by scholar on 8/3/22.
//

import UIKit

class journalViewController: UIViewController {

    @IBOutlet weak var entry: UILabel!
    @IBOutlet weak var textField: UITextField!
    
 
   /* override func touchesBegan(_ touches: Set<UITouch>, with event: view.endEditing(true)){
        super.touchesBegan(touches, with: event)
    }*/
        
    override func viewDidLoad() {
        super.viewDidLoad()
        entry.isHidden = true

        // Do any additional setup after loading the view.
    }
    @IBAction func save(_ sender: UIButton) {
        entry.isHidden = false
        textField.isHidden = true
        if let newEntry = textField.text {
            entry.text = newEntry
        }
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
