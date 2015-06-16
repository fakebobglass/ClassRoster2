//
//  ViewController.swift
//  ClassRoster2
//
//  Created by Pamily on 6/8/15.
//  Copyright (c) 2015 FakeApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
  
  
  //first things first, create the table viewer.
  
  @IBOutlet weak var tableView: UITableView!
  
  //Now, lets add a way to add some people.
  
  var people = [Person]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    //lets set the deligate, the data source, as the tableview itself. Weird, but we gotta do it.
    
    
    //create some people!
    let jaime = Person(first: "Jaime", last: "Lannister")
    let tywin = Person(first: "Tywin", last: "Lannister")
    let cersi = Person(first: "Cersi", last: "Lannister")
    
    //add some people!
    self.people.append(jaime)
    self.people.append(tywin)
    self.people.append(cersi)
    
  }
  
 
  
  //lets keep the number of cells the same number of people. Keeps things nice and tidy.
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return self.people.count
   
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    //dequeue! Gotta dequeue. Keeps things light, I think. I don't know, I didn't dequeue in my other tableview apps before, but I'll trust you.
    
    let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
    
    //now lets put some info in these mutha f'in cells in this mutha f'in tableview!
    let personToDisplay = self.people[indexPath.row]
    cell.textLabel?.text = personToDisplay.firstName + " " + personToDisplay.lastName
    
    return cell
  }
  
  //PREPARE. FOR. SEGUE!!!!
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
    //do the segue! WITNESS MEEE!!!
    if segue.identifier == "ShowDetailViewController" {
      
      let detailViewController = segue.destinationViewController as! DetailViewController
      
      let indexPath = self.tableView.indexPathForSelectedRow()
      let selectedRow = indexPath!.row
      let selectedPerson = self.people[selectedRow]
        detailViewController.selectedPerson = selectedPerson
    }
  
}
}