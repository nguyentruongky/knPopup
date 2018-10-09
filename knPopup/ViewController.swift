//
//  ViewController.swift
//  knPopup
//
//  Created by Ky Nguyen Coinhako on 10/9/18.
//  Copyright © 2018 Ky Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIMaker.makeButton(title: "Show referral popup")
        view.addSubviews(views: button)
        button.center(toView: view)
        button.addTarget(self, action: #selector(showReferralPopup), for: .touchUpInside)
    }
    
    @objc func showReferralPopup() {
        ReferralPopup().show(in: view)
    }
}
