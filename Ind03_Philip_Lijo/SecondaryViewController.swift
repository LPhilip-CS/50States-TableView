//
//  SecondaryViewController.swift
//  Ind03_Philip_Lijo
//
//  Created by Lijo Philip on 2/27/22.
//

import UIKit

class SecondaryViewController: UIViewController {

    @IBOutlet weak var stateImageView: UIImageView!
    @IBOutlet weak var stateNameLabel: UILabel!
    
    var stateImage = UIImage()
    var stateName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stateImageView.image = stateImage
        stateNameLabel.text = stateName
        

        // Do any additional setup after loading the view.
    }
    

}
