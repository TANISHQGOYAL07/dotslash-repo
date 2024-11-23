//
//  AlphabetsTableViewController.swift
//  SignMeUp
//
//  Created by TANISHQ on 23/11/24.
//

import UIKit

class AlphabetsTableViewController: UITableViewController {
    
    
    
    var alphabets: [Alphabet] = [
        Alphabet(name: "A", dailyUse: "Apple"),
        Alphabet(name: "B", dailyUse: "Ball"),
        Alphabet(name: "C", dailyUse: "Cat"),
        Alphabet(name: "D", dailyUse: "Dog"),
        Alphabet(name: "E", dailyUse: "Elephant"),
        Alphabet(name: "F", dailyUse: "Fan"),
        Alphabet(name: "G", dailyUse: "Glass"),
        Alphabet(name: "H", dailyUse: "Hat"),
        Alphabet(name: "I", dailyUse: "Ice"),
        Alphabet(name: "J", dailyUse: "Jug"),
        Alphabet(name: "K", dailyUse: "Kite"),
        Alphabet(name: "L", dailyUse: "Lamp"),
        Alphabet(name: "M", dailyUse: "Milk"),
        Alphabet(name: "N", dailyUse: "Notebook"),
        Alphabet(name: "O", dailyUse: "Orange"),
        Alphabet(name: "P", dailyUse: "Pen"),
        Alphabet(name: "Q", dailyUse: "Queen"),
        Alphabet(name: "R", dailyUse: "Rain"),
        Alphabet(name: "S", dailyUse: "Sun"),
        Alphabet(name: "T", dailyUse: "Table"),
        Alphabet(name: "U", dailyUse: "Umbrella"),
        Alphabet(name: "V", dailyUse: "Van"),
        Alphabet(name: "W", dailyUse: "Water"),
        Alphabet(name: "X", dailyUse: "Xylophone"),
        Alphabet(name: "Y", dailyUse: "Yarn"),
        Alphabet(name: "Z", dailyUse: "Zoo")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
