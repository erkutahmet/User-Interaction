//
//  ViewController.swift
//  User Interaction
//
//  Created by Ahmet Erkut on 13.10.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func alert(_ sender: Any) {
        let alertController = UIAlertController(title: "Title", message: "Content", preferredStyle: .alert)
        
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel) { action in
            print("Cancel selected!")
        }
        
        alertController.addAction(cancelButton)
        
        let okayButton = UIAlertAction(title: "Okay", style: .destructive) { action in
            print("Okay selected!")
        }
        
        alertController.addAction(okayButton)
        
        self.present(alertController, animated: true)
    }
    
    @IBAction func actionSheet(_ sender: Any) {
        let alertController = UIAlertController(title: "Title", message: "Content", preferredStyle: .actionSheet)
        
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel) { action in
            print("Cancel selected!")
        }
        
        alertController.addAction(cancelButton)
        
        let okayButton = UIAlertAction(title: "Okay", style: .destructive) { action in
            print("Okay selected!")
        }
        
        alertController.addAction(okayButton)
        
        self.present(alertController, animated: true)
    }
    
    @IBAction func customAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Title", message: "Content", preferredStyle: .alert)
        
        alertController.addTextField() // 0
        
        alertController.addTextField() { textField in // 1
            textField.placeholder = "Enter data"
            textField.keyboardType = .numberPad
            textField.isSecureTextEntry = true
        }
        
        let saveButton = UIAlertAction(title: "Save", style: .default) { action in
            let tf = alertController.textFields![0] as UITextField
            let tf1 = alertController.textFields![1] as UITextField
            
            if let gotData = tf.text, let gotData1 = tf1.text {
                print("Data: \(gotData)")
                print("Data1: \(gotData1)")
            }
            
        }
        
        alertController.addAction(saveButton)
        
        self.present(alertController, animated: true)
    }
}

