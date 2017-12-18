//
//  TemporarySensitivityFactorViewController.swift
//  Loop
//
//  Created by Jessie Pusateri on 12/15/17.
//  Copyright © 2017 LoopKit Authors. All rights reserved.
//

import UIKit
import os.log

final class TemporarySensitivityFactorViewController: UIViewController {
    
    //MARK : Properties
    @IBOutlet weak var tsfTextField: UITextField!
    @IBOutlet weak var beginButton: UIButton!
    
    var tsf: String?
    
    // Mark: Actions
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        super.prepare(for: segue, sender: sender)
        
        /*
        guard let button = sender as? UIButton, button === beginButton else {
            os_log("The begin button was not pressed, cancelling", log: OSLog.default, type: .debug)
            return
        }*/
        
        let temporary_sensitivity_factor = tsfTextField.text ?? ""
        
        print(temporary_sensitivity_factor)
        
    }


}
