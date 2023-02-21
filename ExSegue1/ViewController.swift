//
//  ViewController.swift
//  ExSegue1
//
//  Created by 김종권 on 2023/02/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.moveToVC2()
        }
    }

    @IBAction func moveToVC2(_ sender: Any? = nil) {
        performSegue(withIdentifier: "segue1", sender: self)
    }
}

