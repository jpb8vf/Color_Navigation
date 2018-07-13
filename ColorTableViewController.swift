//
//  ColorTableViewController.swift
//  Colors
//
//  Created by Vito Bertolino on 7/3/18.
//  Copyright © 2018 Joseph Bertolino. All rights reserved.
//

import UIKit

class ColorTableViewController: UITableViewController {

   // var numbers = ["red","orange","yellow","green","blue","purple","brown"]
    
    var numbers = [Color(name: "red", uiColor: UIColor.red),
                    Color(name: "orange", uiColor: UIColor.orange),
                    Color(name: "yellow", uiColor: UIColor.yellow),
                    Color(name: "green", uiColor: UIColor.green),
                    Color(name: "blue", uiColor: UIColor.blue),
                    Color(name: "purple", uiColor: UIColor.purple),
                    Color(name: "brown", uiColor: UIColor.brown)]
    
    
    @IBOutlet weak var colorsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
     
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return numbers.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
     
     cell.textLabel?.text = numbers[indexPath.row].name
        cell.backgroundColor = numbers[indexPath.row].uiColor
     
     return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDetailViewController,
        let row = colorsTableView.indexPathForSelectedRow?.row
        {
            destination.color = numbers[row]
        }
    }
    
}

