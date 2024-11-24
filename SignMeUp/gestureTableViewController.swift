//
//  gestureTableViewController.swift
//  SignMeUp
//
//  Created by TANISHQ on 24/11/24.
//

import UIKit

class gestureTableViewController: UITableViewController {
    
    var greetings: [Gesture] = [
        Gesture(name: "Good Morning"),
        Gesture(name: "Good Afternoon"),
        Gesture(name: "Good Evening"),
        Gesture(name: "Good Night"),
        Gesture(name: "Hello"),
        Gesture(name: "Hi"),
        Gesture(name: "Hey"),
        Gesture(name: "How are you?"),
        Gesture(name: "Nice to meet you"),
        Gesture(name: "Welcome"),
        Gesture(name: "Take care"),
        Gesture(name: "Goodbye"),
        Gesture(name: "See you later"),
        Gesture(name: "Have a nice day"),
        Gesture(name: "Have a great day"),
        Gesture(name: "Cheers"),
        Gesture(name: "Thank you"),
        Gesture(name: "You’re welcome"),
        Gesture(name: "Happy Birthday"),
        Gesture(name: "Congratulations")
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
        return greetings.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "wordsIdentifier", for: indexPath)

        // Configure the cell...
        
        var content = cell.defaultContentConfiguration()
        
        let word = greetings[indexPath.row]
        
        // Configure the content with the Alphabet's name
        content.text = word.name
        
        
        // Optionally, you can set a secondary text if needed
        
        
        content.textProperties.color = getRandomColor()
        
        // Apply the content configuration to the cell
        cell.contentConfiguration = content

        return cell
        
    }
    
    func getRandomColor() -> UIColor {
        // Array of possible colors
        let colors: [UIColor] = [.orange, .green, .blue , .purple , .systemCyan]
        
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
