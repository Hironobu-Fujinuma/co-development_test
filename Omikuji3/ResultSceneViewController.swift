//
//  ResultSceneViewController.swift
//  Eitan
//
//  Created by member on 2022/06/17.
//

import UIKit

class ResultSceneViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        for qNum in 0 ..< 50 {
            print(rslt[qNum])
        }
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
