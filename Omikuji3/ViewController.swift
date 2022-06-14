//
//  ViewController.swift
//  Omikuji3
//
//  Created by KashiLab on 2022/06/10.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func pullOmikuji(_ sender: Any) {
        let items = ["大吉", "中吉", "小吉", "凶"]
        let r = Int(arc4random()) % items.count
        resultBox.text = items[r]
    }
    @IBOutlet weak var resultBox: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

