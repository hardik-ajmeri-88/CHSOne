//
//  ForgotViewController.swift
//  CHSOne
//
//  Created by Hardik Ajmeri on 25/02/18.
//  Copyright © 2018 FutureScape. All rights reserved.
//

import UIKit

class ForgotViewController: UIViewController {
    
    //MARK: IBOutlets
    @IBOutlet weak var btnSubmit: UIButton!
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var txtUsername: UITextField!
    
    //MARK: UIView Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        txtUsername.addPaddingLeftIcon(UIImage(named: "user")!, padding: 8.0)
    }
    
    override func viewDidLayoutSubviews() {
        txtUsername.addBorders(edges: [.bottom], color: UIColor.white)
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
    
    //MARK: - IBAction Methods
    @IBAction func backTouchupInside(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func submitTouchupInside(_ sender: Any) {
        
    }

    //MARK: Memory Warning Method
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
