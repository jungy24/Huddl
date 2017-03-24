//
//  HomeViewController.swift
//  Huddl
//
//  Created by Jungyoon Yu on 3/21/17.
//  Copyright © 2017 Jungyoon Yu. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var logoView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        logoView.image = #imageLiteral(resourceName: "joinJADElogo")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
