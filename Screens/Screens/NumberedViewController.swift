//
//  NumberedViewController.swift
//  Screens
//
//  Created by Seschwan on 5/7/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

import UIKit

class NumberedViewController: UIViewController {

    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 160, height: 180))
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(label)
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 64)
        label.center = self.view.center
        
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let number = self.navigationController?.viewControllers.count {
            label.text = String(number)
            
        }
    }
    
    @IBAction func orangeDoneBtnTapped(_ sender: UIBarButtonItem) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    
    
    
}
