//
//  ViewController.swift
//  Ind03_Philip_Lijo
//
//  Created by Lijo Philip on 2/27/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var fiftyStatesTable: UITableView!
    
    let stateNames = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]
    
    let stateNicknames = ["The Yellowhammer State", "The Last Frontier State", "The Grand Canyon State", "The Natural State", "The Golden State", "The Centennial State", "The Constitution State", "The First State", "The Sunshine State", "The Peach State", "The Aloha State", "The Gem State", "The Prairie State", "The Hoosier State", "The Hawkeye State" , "The Sunflower State", "The Bluegrass State", "The Pelican State", "The Pine Tree State", "The Old Line State", "The Bay State", "The Great Lakes State", "The North Star State", "The Magnolia State", "The Show Me State", "The Treasure State", "The Cornhusker State", "The Silver State", "The Granite State", "The Garden State", "The Land of Enchantment State", "The Empire State", "The Tar Heel State", "The Peace Garden State", "The Buckeye State","The Sooner State", "The Beaver State", "The Keystone State", "The Ocean State", "The Palmetto State", "The Mount Rushmore State", "The Volunteer State", "The Lone Star State", "The Beehive State", "The Green Mountain State", "The Old Dominion State", "The Evergreen State", "The Mountain State", "The Badger State", "The Equality or Cowboy State"]
    
    let stateAreas = ["50,744 Sq. Miles", "571,951 Sq. Miles", "113,635 Sq. Miles", "52,068 Sq. Miles", "155,959 Sq. Miles"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let secondViewController = storyboard?.instantiateViewController(identifier: "SecondaryViewController") as? SecondaryViewController {
            secondViewController.stateImage = UIImage(named: stateNames[indexPath.row])!
            secondViewController.stateName = stateNames[indexPath.row]
            secondViewController.stateArea = stateAreas[indexPath.row]
            self.navigationController?.pushViewController(secondViewController, animated: true)
        }
    }


}

extension ViewController : UITableViewDelegate {
    
}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stateNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FiftyStatesTableViewCell", for: indexPath) as! FiftyStatesTableViewCell
        cell.stateNameLabel.text = stateNames[indexPath.row]
        cell.nicknameLabel.text = stateNicknames[indexPath.row]
        cell.stateFlagImgView.image = UIImage(named: stateNames[indexPath.row])
        
        
        
        return cell
    }
    
    
}


