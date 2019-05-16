//
//  ViewController.swift
//  TextFieldDelegate
//
//  Created by Delvin on 16/05/19.
//  Copyright © 2019 Delvin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordTextField.delegate = self
    }

    @IBAction func buttonClicked(_ sender: Any) {
        performSegue(withIdentifier: "toDetail", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail", let destination = segue.destination as? DetailViewController{
            destination.nameFromPreviousView = usernameTextField.text
        }
    }
}


extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == usernameTextField {
            if textField.text == ""{
                let alert = UIAlertController(title: "Warning", message: "Username should not be empty", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
                alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
            else{
                passwordTextField.becomeFirstResponder()
            }
        }
        else{
            passwordTextField.resignFirstResponder()
        }
        return true
    }
}
