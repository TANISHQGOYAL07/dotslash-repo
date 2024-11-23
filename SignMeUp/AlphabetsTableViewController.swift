//
//  AlphabetsTableViewController.swift
//  SignMeUp
//
//  Created by TANISHQ on 23/11/24.
//

import UIKit

class AlphabetsTableViewController: UITableViewController {
    
    
    
    var alphabets: [Alphabet] = [
        Alphabet(name: "A - Aa", dailyUse: "Apple , Awaken "),
        Alphabet(name: "B - Bb", dailyUse: "Ball , Breathe"),
        Alphabet(name: "C - Cc", dailyUse: "Cat , Create "),
        Alphabet(name: "D - Dd", dailyUse: "Dog , Drink"),
        Alphabet(name: "E - Ee", dailyUse: "Elephant , Exercise"),
        Alphabet(name: "F - Ff", dailyUse: "Fan , Focus"),
        Alphabet(name: "G - Gg", dailyUse: "Glass , Grind"),
        Alphabet(name: "H - Hh", dailyUse: "Hat , Hydrate"),
        Alphabet(name: "I - Ii", dailyUse: "Ice Interact"),
        Alphabet(name: "J - Jj", dailyUse: "Jug , Journal"),
        Alphabet(name: "K - Kk", dailyUse: "Kite , Keep"),
        Alphabet(name: "L - Ll", dailyUse: "Learn , Laugh"),
        Alphabet(name: "M - Mm", dailyUse: "Milk , Mediate"),
        Alphabet(name: "N - Nn", dailyUse: "Notebook , Nourish"),
        Alphabet(name: "O - On", dailyUse: "Orange , Observe"),
        Alphabet(name: "P - Pp", dailyUse: "Pen , Plan"),
        Alphabet(name: "Q - Qq", dailyUse: "Queen, Quit"),
        Alphabet(name: "R - Rr", dailyUse: "Rain , Read"),
        Alphabet(name: "S - Ss", dailyUse: "Sun, Sleep"),
        Alphabet(name: "T - Tt", dailyUse: "Time, Table"),
        Alphabet(name: "U - Uu", dailyUse: "Umbrella, Unite"),
        Alphabet(name: "V - Vv", dailyUse: "Van, Visualize"),
        Alphabet(name: "W - Ww", dailyUse: "Water, Write"),
        Alphabet(name: "X - Xx", dailyUse: "Xylophone, Xray"),
        Alphabet(name: "Y - Yy", dailyUse: "Yarn , Yield"),
        Alphabet(name: "Z - Zz", dailyUse: "Zoo , Zip")
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
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return alphabets.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "alphabetCell", for: indexPath)
        
        

        // Configure the cell...
        
        var content = cell.defaultContentConfiguration()
        
        // Get the corresponding Alphabet object
        let alphabet = alphabets[indexPath.row]
        
        // Configure the content with the Alphabet's name
        content.text = alphabet.name
        
        
        // Optionally, you can set a secondary text if needed
        content.secondaryText = "Commonly Used Words : " + alphabet.dailyUse
        
        content.textProperties.color = getRandomColor()
        
        // Apply the content configuration to the cell
        cell.contentConfiguration = content

        return cell
    }
    
    @IBAction func backButtonTapped(_ sender: UIBarButtonItem) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    func getRandomColor() -> UIColor {
        // Array of possible colors
        let colors: [UIColor] = [.orange, .green]
        
        // Return a random color from the array
        return colors.randomElement() ?? .black
    }
    
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
