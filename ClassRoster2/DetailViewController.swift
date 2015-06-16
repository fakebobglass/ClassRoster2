//
//  DetailViewController.swift
//  ClassRoster2
//
//  Created by Pamily on 6/10/15.
//  Copyright (c) 2015 FakeApps. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

  //set up my labels here
  @IBOutlet var firstNameLabel: UILabel!
  @IBOutlet var lastNameLabel: UILabel!
  var selectedPerson : Person!
  
    override func viewDidLoad() {
        super.viewDidLoad()
      self.firstNameLabel.text = self.selectedPerson.firstName
      self.lastNameLabel.text = self.selectedPerson.lastName


  }
}