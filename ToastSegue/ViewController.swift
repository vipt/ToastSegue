//
//  ViewController.swift
//  ToastSegue
//
//  Created by motoki on 2017/08/26.
//  Copyright © 2017年 vipt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let toastSegue = segue as! ToastSegue
        toastSegue.message = "Hello World!"
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "next", sender: nil)
    }

}

