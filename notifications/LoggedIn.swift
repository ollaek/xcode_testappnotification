//
//  LoggedIn.swift
//  notifications
//
//  Created by Ollaek JR on 11/26/17.
//  Copyright © 2017 Ollaek JR. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoggedIn: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func Logout(_ sender: Any) {
        let firebaseauth = Auth.auth()
        do {
            try firebaseauth.signOut()
            dismiss(animated: false, completion: nil)
        }catch let signouterror as NSError{
            print("error",signouterror)
        }
    }
    
}
