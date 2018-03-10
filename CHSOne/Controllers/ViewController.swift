//
//  ViewController.swift
//  CHSOne
//
//  Created by Hardik Ajmeri on 22/02/18.
//  Copyright © 2018 FutureScape. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //MARK: IBOutlets
    @IBOutlet weak var txtComplex: UITextField!
    @IBOutlet weak var btnContinue: UIButton!
    @IBOutlet weak var btnBack: UIButton!
    
    //MARK: UIView Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.commonInit()
    }
    
    override func viewDidLayoutSubviews() {
        txtComplex.addBorders(edges: [.bottom], color: UIColor.white)
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
    
    //MARK: Private Methods
    func commonInit() -> Void {
        txtComplex.addPaddingLeftIcon(UIImage(named: "building")!, padding: 8.0)
    }

    //MARK: IBAction Methods
    @IBAction func continueTouchupInside(_ sender: Any) {
        
    }
    
    @IBAction func backTouchupInside(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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

