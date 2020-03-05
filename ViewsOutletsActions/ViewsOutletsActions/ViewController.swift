//
//  ViewController.swift
//  ViewsOutletsActions
//
//  Created by Lucas Inocencio on 19/11/17.
//  Copyright © 2017 Lucas Inocencio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet var buttons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func runSomething(_ sender: UIButton) {
        print("RunSomething")
    }
    
    @IBAction func doSomething(_ sender: UIButton, forEvent event: UIEvent) {
        print("doSomething")
    }
    
    @IBAction func change(_ sender: Any) {
        print("Change")
    }
    
    
}

