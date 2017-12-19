//
//  TemporarySensitivityFactorViewController.swift
//  Loop
//
//  Created by Jessie Pusateri on 12/15/17.
//  Copyright © 2017 LoopKit Authors. All rights reserved.
//

import UIKit
import os.log

final class TemporarySensitivityFactorTableViewController: UITableViewController {
    
    // MARK : Properties
    @IBOutlet weak var beginButton: UIButton!
    
    var tsf: String?
    
    // MARK : Actions
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
   

    // MARK : - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        super.prepare(for: segue, sender: sender)
        
        /*
        guard let button = sender as? UIButton, button === beginButton else {
            os_log("The begin button was not pressed, cancelling", log: OSLog.default, type: .debug)
            return
        }*/
        
        //let temporary_sensitivity_factor = tsfTextField.text ?? ""
        //print(temporary_sensitivity_factor)
        
    }
    
    // MARK: - Table view data source
    
    fileprivate enum Row: Int {
        case value
        case duration
        case preview
        
        static let count = 3
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Row.count
    }
    
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch Row(rawValue: indexPath.row)! {
        case .value:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TSFTableViewCell", for: indexPath)
            return cell
        case .duration:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TSFTableViewCell", for: indexPath)
            return cell
        case .preview:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TSFTableViewCell", for: indexPath)
            return cell
        }
    }

}
