//
//  RecommendationView.swift
//  BWSE
//
//  Created by Betye on 6/20/18.
//  Copyright © 2018 Betye. All rights reserved.
//

import UIKit

class RecommendationView: UIViewController {

    @IBOutlet weak var textViewText: UITextView!
    @IBOutlet weak var tryAgain: UIButton!

    @IBAction func Dinner(_ sender: Any) {
    }
    
    let foodName: [String] = ["Italian food", "Chinese food", "Indian food","Korean food","Ethiopian food", "Middle-Eastern food"]

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func setFoodName()  {
        textViewText.text = foodName[Int(arc4random_uniform(UInt32(foodName.count)))]
        
    }
    
    
    // Shake Function
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        setFoodName()
    }

    
   
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
