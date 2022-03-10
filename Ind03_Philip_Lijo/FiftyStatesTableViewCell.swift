//
//  FiftyStatesTableViewCell.swift
//  Ind03_Philip_Lijo
//
//  Created by Lijo Philip on 2/27/22.
//

import UIKit

// Rendering a cell row in out UITableView
class FiftyStatesTableViewCell: UITableViewCell {

    @IBOutlet weak var stateFlagImgView: UIImageView!
    @IBOutlet weak var stateNameLabel: UILabel!
    @IBOutlet weak var nicknameLabel: UILabel!
    
    //
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // Configure the view for the selected state
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
