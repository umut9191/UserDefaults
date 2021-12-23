//
//  ViewController.swift
//  UserDefaults
//
//  Created by Mac on 24.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var namelabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let data = UserDefaults.standard.object(forKey: "name") as? String{
            namelabel.text = data
        }
    }

    @IBAction func saveButtonPressed(_ sender: UIButton) {
        if sender.currentTitle=="Save" {
            UserDefaults.standard.setValue(textField.text, forKey: "name")
        }
        if sender.currentTitle=="Delete" {
        
        }
    }
    
}

