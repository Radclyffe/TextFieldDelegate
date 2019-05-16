//
//  DetailViewController.swift
//  TextFieldDelegate
//
//  Created by Delvin on 16/05/19.
//  Copyright © 2019 Delvin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var nameFromPreviousView: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLabel.text = nameFromPreviousView
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
