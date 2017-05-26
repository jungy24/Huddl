//
//  SubMainViewController.swift
//  Huddl
//
//  Created by Jungyoon Yu on 5/25/17.
//  Copyright © 2017 Jungyoon Yu. All rights reserved.
//

import UIKit

class SubMainViewController: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet weak var chatButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        customizeNavBar()
        sideMenus()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func sideMenus() {
        
        if revealViewController() != nil{
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 290
            //revealViewController().rightViewRevealWidth = 160
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        }
        
    }

    func customizeNavBar() {
        
        //self.navigationController?.navigationBar.titleTextAttributes = [ NSFontAttributeName: UIFont(name: "Gill Sans", size: 22)!]

        
        navigationController?.navigationBar.tintColor = UIColor(colorLiteralRed: 108/255, green: 120/255, blue: 130/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = UIColor(colorLiteralRed: 134/255, green: 240/255, blue: 223/255, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor(colorLiteralRed: 108/255, green: 120/255, blue: 130/255, alpha: 1), NSFontAttributeName: UIFont(name: "Gill Sans", size: 22)!]
        
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
