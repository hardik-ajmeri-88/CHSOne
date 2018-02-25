//
//  LoginViewController.swift
//  CHSOne
//
//  Created by Hardik Ajmeri on 25/02/18.
//  Copyright © 2018 FutureScape. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    //MARK: IBOutlets
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    //MARK: UIView Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        txtUsername.addBorders(edges: [.bottom], color: UIColor.white)
        txtPassword.addBorders(edges: [.bottom], color: UIColor.white)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        if var topController = UIApplication.shared.keyWindow?.rootViewController {
            while let presentedViewController = topController.presentedViewController {
                topController = presentedViewController
            }
            topController.view.frame.origin = CGPoint(x: 0, y: 0)
        }
        super.viewWillTransition(to: size, with: coordinator)
    }
    

    //MARK: UITextField Delegates
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    //MARK: Memory Warning Method
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
