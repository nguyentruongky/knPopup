//
//  ReferralPopup.swift
//  knPopup
//
//  Created by Ky Nguyen Coinhako on 10/9/18.
//  Copyright © 2018 Ky Nguyen. All rights reserved.
//

import UIKit
class ReferralPopup: knPopup {
    override func setupView() {
        let color = UIColor.color(r: 241, g: 66, b: 70)
        okButton.backgroundColor = color
        okButton.setTitle("COPY & CONTINUE", for: .normal)
        let instruction = "GET YOUR FREE $10 CREDITS"
        let label = UIMaker.makeLabel(text: instruction,
                                      font: UIFont.boldSystemFont(ofSize: 15),
                                      color: .white,
                                      alignment: .center)
        let circle = UIMaker.makeView(background: color)
        let logo = UIMaker.makeImageView(image: UIImage(named: "swift"), contentMode: .scaleAspectFit)
        logo.backgroundColor = .white
        let codeTitle = UIMaker.makeLabel(text: "REFERRAL CODE",
                                      font: UIFont.boldSystemFont(ofSize: 12),
                                      color: UIColor.color(r: 155, g: 165, b: 172),
                                      alignment: .center)
        let codeLabel = UIMaker.makeLabel(text: "KYNGUYEN",
                                          font: UIFont.boldSystemFont(ofSize: 40),
                                          color: UIColor.color(r: 242, g: 64, b: 65),
                                          alignment: .center)
        view.createRoundCorner(7)
        
        view.addSubviews(views: circle, label, okButton, logo, codeTitle, codeLabel)
        label.top(toView: view, space: 24)
        label.horizontal(toView: view, space: 24)
        
        circle.centerX(toView: view)
        circle.bottom(toAnchor: logo.centerYAnchor)
        let edge: CGFloat = UIScreen.main.bounds.width * 2
        circle.square(edge: edge)
        circle.createRoundCorner(edge / 2)
        
        let logoEdge: CGFloat = 66
        logo.square(edge: logoEdge)
        logo.centerX(toView: circle)
        logo.verticalSpacing(toView: label, space: 40)
        logo.createRoundCorner(logoEdge / 2)
        logo.createBorder(1, color: color)
        
        codeTitle.centerX(toView: view)
        codeTitle.verticalSpacing(toView: logo, space: 24)
        
        codeLabel.centerX(toView: view)
        codeLabel.verticalSpacing(toView: codeTitle, space: 8)
        
        okButton.verticalSpacing(toView: codeLabel, space: 24)
        okButton.bottom(toView: view, space: -24)
        okButton.horizontal(toView: view, space: 36)
        okButton.createRoundCorner(28)
        
        okButton.addTarget(self, action: #selector(dismiss), for: .touchUpInside)
    }
}
