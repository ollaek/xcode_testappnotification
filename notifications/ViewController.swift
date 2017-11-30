//
//  ViewController.swift
//  notifications
//
//  Created by Ollaek JR on 11/23/17.
//  Copyright © 2017 Ollaek JR. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var EmailTexBox: UITextField!
    @IBOutlet weak var PasswordTexBox: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presentui()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func LoginAction(_ sender: Any) {
        if let email = EmailTexBox.text ,let password = PasswordTexBox.text{         Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            if let firebaseError = error {
                print(firebaseError.localizedDescription)
                return
            }
            self.presentui()
            print("Successful")
            }
        }
    }
    
    @IBAction func RegisterAction(_ sender: Any) {
        
        if let email = EmailTexBox.text ,let password = PasswordTexBox.text {
            Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
                if let firebaseError = error {
                    print(firebaseError.localizedDescription)
                    return
                }
                print("Successful")
            }
       }
    }
    func presentui (){
        let storyboard:UIStoryboard = UIStoryboard(name:"Main",bundle:nil)
        let loggedInVC:LoggedIn = storyboard.instantiateViewController(withIdentifier: "LoggedIn") as! LoggedIn
        self.present(loggedInVC,animated: true,completion: nil)
    }
    
    
}

