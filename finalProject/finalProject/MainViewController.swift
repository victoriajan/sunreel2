//
//  MainViewController.swift
//  finalProject
//
//  Created by scholar on 8/3/22.
//

import UIKit

class MainViewController: UIViewController {
    
  
    @IBOutlet weak var filledHeart: UIImageView!
    @IBOutlet weak var filledHeart2: UIImageView!
    @IBOutlet weak var filledHeart3: UIImageView!
    @IBOutlet weak var filledHeart4: UIImageView!
    @IBOutlet weak var filledHeart5: UIImageView!
    @IBOutlet weak var filledHeart6: UIImageView!
    
    @IBAction func like6(_ sender: Any) {
        filledHeart6.isHidden = false
    }
    @IBAction func like5(_ sender: Any) {
        filledHeart5.isHidden = false
    }
    @IBAction func like4(_ sender: Any) {
        filledHeart4.isHidden = false
    }
    @IBAction func like3(_ sender: Any) {
        filledHeart3.isHidden = false
    }
    @IBAction func like2(_ sender: Any) {
        filledHeart2.isHidden = false
    }
    @IBAction func like(_ sender: Any) {
        filledHeart.isHidden = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filledHeart.isHidden = true
        filledHeart2.isHidden = true
        filledHeart3.isHidden = true
        filledHeart4.isHidden = true
        filledHeart5.isHidden = true
        filledHeart6.isHidden = true
    
   
    

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
