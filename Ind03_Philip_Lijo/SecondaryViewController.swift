//
//  SecondaryViewController.swift
//  Ind03_Philip_Lijo
//
//  Created by Lijo Philip on 2/27/22.
//

import UIKit

class SecondaryViewController: UIViewController {

    
    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var stateImageView: UIImageView!
    @IBOutlet weak var stateNameLabel: UILabel!
    @IBOutlet weak var stateAreaLabel: UILabel!
    
    var flagImage = UIImage()
    var stateImage = UIImage()
    var stateName = ""
    var stateArea = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        flagImageView.image = flagImage
        stateImageView.image = stateImage
        stateNameLabel.text = stateName
        stateAreaLabel.text = stateArea
        

        // Do any additional setup after loading the view.
    }
    

}
