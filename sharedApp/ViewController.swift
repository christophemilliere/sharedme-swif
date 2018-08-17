//
//  ViewController.swift
//  sharedApp
//
//  Created by Christophe on 17/08/2018.
//  Copyright © 2018 Christophe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ui_shareTextView: UITextView!
    @IBOutlet weak var ui_errorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func shareTypedText() {
        let typedText: String = ui_shareTextView.text
        if typedText.count > 0  {
            let shareViewController = UIActivityViewController(activityItems: [typedText], applicationActivities: nil)
            present(shareViewController, animated: true, completion: nil)
            ui_errorLabel.text = ""
        } else {
            ui_errorLabel.text = "Aucun message n'a été entré"
        }
    }
}

