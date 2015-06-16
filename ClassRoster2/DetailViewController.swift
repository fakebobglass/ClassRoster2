//
//  DetailViewController.swift
//  ClassRoster2
//
//  Created by Pamily on 6/10/15.
//  Copyright (c) 2015 FakeApps. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate {

  //set up my labels here
  @IBOutlet var firstNameLabel: UILabel!
  @IBOutlet var lastNameLabel: UILabel!
  @IBOutlet var firstNameTextField: UITextField!
  @IBOutlet var lastNameTextField: UITextField!
  var selectedPerson : Person!
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
      self.firstNameTextField.delegate = self
      self.lastNameTextField.delegate = self
      self.firstNameTextField.tag = 0
      self.lastNameTextField.tag = 1
      
      self.firstNameTextField.text = self.selectedPerson.firstName
      self.lastNameTextField.text = self.selectedPerson.lastName
      
      func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
      }
      func textFieldDidEndEditing(textField: UITextField) {
        if textField.tag == 0 {
          //set first name
          self.selectedPerson.firstName = textField.text
        } else {
          //set last name
          self.selectedPerson.lastName = textField.text
        }
        
      }
      
      firstNameLabel.text = self.selectedPerson.firstName
      lastNameLabel.text = self.selectedPerson.lastName
      


  }
}