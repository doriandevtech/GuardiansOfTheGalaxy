//
//  ListController.swift
//  GuardiansOfTheGalaxy
//
//  Created by Dorian Emenir on 23/03/2023.
//

import UIKit

class ListController: UITableViewController {
        
    var items: [Character] = Datas.shared.characters
    
    let reuseID = "reuseID"
    let detailSegue = "ShowDetail"

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    /// Defines the number of section inside the UITableView
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    /// Defines the number of row(s) in each section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    /// Defines the content of each row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        if let cellReuse = tableView.dequeueReusableCell(withIdentifier: reuseID) as? CharacterCell {
            cellReuse.setupCell(name: item.name, imageV: item.imagePath)
            return cellReuse
        }
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        return cell
    }
    
    /// Defines the actions made when a given row is selected
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let character = items[indexPath.row]
        performSegue(withIdentifier: detailSegue, sender: character)
    }
    
    /// Configures the height of a row
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    /// Allows to edit a row
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    
    /// Allows to delete a row and its datas from the items list
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.items.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
    
    /// Moves a row to an other place
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let item = items[fromIndexPath.row]
        items.remove(at: fromIndexPath.row)
        items.insert(item, at: to.row)

    }
   

    /// Allows a row to be moved
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }

    
    // MARK: - Navigation
        
        /// Segue performed when a row is selected
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard segue.identifier == detailSegue else { return }
            guard let nextView = segue.destination as? DetailController else { return }
            nextView.character = sender as? Character
        }
    

}
