//
//  ViewController.swift
//  Ind03_Philip_Lijo
//
//  Created by Lijo Philip on 2/27/22.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet weak var fiftyStatesTable: UITableView!
    
    // Array of all 50 State flag images.
    let stateNames = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]
    
    // Array of all 50 State map images.
    let stateMap = ["Alabama-1", "Alaska-1", "Arizona-1", "Arkansas-1", "California-1", "Colorado-1", "Connecticut-1", "Delaware-1", "Florida-1", "Georgia-1", "Hawaii-1", "Idaho-1", "Illinois-1", "Indiana-1", "Iowa-1", "Kansas-1", "Kentucky-1", "Louisiana-1", "Maine-1", "Maryland-1", "Massachusetts-1", "Michigan-1", "Minnesota-1", "Mississippi-1", "Missouri-1", "Montana-1", "Nebraska-1", "Nevada-1", "New Hampshire-1", "New Jersey-1", "New Mexico-1", "New York-1", "North Carolina-1", "North Dakota-1", "Ohio-1", "Oklahoma-1", "Oregon-1", "Pennsylvania-1", "Rhode Island-1", "South Carolina-1", "South Dakota-1", "Tennessee-1", "Texas-1", "Utah-1", "Vermont-1", "Virginia-1", "Washington-1", "West Virginia-1", "Wisconsin-1", "Wyoming-1"]
    
    // Array of all 50 State nicknames.
    let stateNicknames = ["The Yellowhammer State", "The Last Frontier State", "The Grand Canyon State", "The Natural State", "The Golden State", "The Centennial State", "The Constitution State", "The First State", "The Sunshine State", "The Peach State", "The Aloha State", "The Gem State", "The Prairie State", "The Hoosier State", "The Hawkeye State" , "The Sunflower State", "The Bluegrass State", "The Pelican State", "The Pine Tree State", "The Old Line State", "The Bay State", "The Great Lakes State", "The North Star State", "The Magnolia State", "The Show Me State", "The Treasure State", "The Cornhusker State", "The Silver State", "The Granite State", "The Garden State", "The Land of Enchantment State", "The Empire State", "The Tar Heel State", "The Peace Garden State", "The Buckeye State","The Sooner State", "The Beaver State", "The Keystone State", "The Ocean State", "The Palmetto State", "The Mount Rushmore State", "The Volunteer State", "The Lone Star State", "The Beehive State", "The Green Mountain State", "The Old Dominion State", "The Evergreen State", "The Mountain State", "The Badger State", "The Equality or Cowboy State"]
    
    // Array of all 50 State areas (Sq. miles).
    let stateAreas = ["50,744 Sq. Miles", "571,951 Sq. Miles", "113,635 Sq. Miles", "52,068 Sq. Miles", "155,959 Sq. Miles", "103,718 Sq. Miles", "4,845 Sq. Miles", "1,954 Sq. Miles", "53,927 Sq. Miles", "57,906 Sq. Miles", "6,423 Sq. Miles", "82,747 Sq. Miles", "55,584 Sq. Miles", "35,867 Sq. Miles", "55,869 Sq. Miles", "81,815 Sq. Miles", "39,728 Sq. Miles", "43,562 Sq. Miles", "30,862 Sq. Miles", "9,774 Sq. Miles", "7,840 Sq. Miles", "56,804 Sq. Miles", "79,610 Sq. Miles", "46,907 Sq. Miles", "68,886 Sq. Miles", "145,552 Sq. Miles", "76,872 Sq. Miles", "109,826 Sq. Miles", "8,968 Sq. Miles", "7,417 Sq. Miles", "121,356 Sq. Miles", "47,214 Sq. Miles", "48,711 Sq. Miles", "68,976 Sq. Miles", "40,948 Sq. Miles", "68,667 Sq. Miles", "95,997 Sq. Miles", "44,817 Sq. Miles", "1,045 Sq. Miles", "30,109 Sq. Miles", "75,885 Sq. Miles", "41,217 Sq. Miles", "261,797 Sq. Miles", "82,144 Sq. Miles", "9,250 Sq. Miles", "39,594 Sq. Miles", "66,544 Sq. Miles", "24,078 Sq. Miles", "54,310 Sq. Miles", "97,100 Sq. Miles"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    // Fuction to pass array data to the SecondaryViewController.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let secondViewController = storyboard?.instantiateViewController(identifier: "SecondaryViewController") as? SecondaryViewController {
            secondViewController.stateImage = UIImage(named: stateNames[indexPath.row])!
            secondViewController.flagImage = UIImage(named: stateMap[indexPath.row])!
            secondViewController.stateName = stateNames[indexPath.row]
            secondViewController.stateArea = stateAreas[indexPath.row]
            self.navigationController?.pushViewController(secondViewController, animated: true)
        }
    }


}


// MARK: - Extensions UITableViewDelegate and UITableViewDataSource

extension ViewController : UITableViewDelegate {
    
}

// Returning each row from our stateNames array to create 50 rows.
extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stateNames.count
    }
    
    // Function to present State name, flag and nicknames in each cell row in TableView.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FiftyStatesTableViewCell", for: indexPath) as! FiftyStatesTableViewCell
        cell.stateNameLabel.text = stateNames[indexPath.row]
        cell.nicknameLabel.text = stateNicknames[indexPath.row]
        cell.stateFlagImgView.image = UIImage(named: stateNames[indexPath.row])
        return cell
    }
    
    
}


