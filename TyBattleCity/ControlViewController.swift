//
//  ControlViewController.swift
//  TyBattleCity
//
//  Created by luckytianyiyan on 2017/8/4.
//  Copyright © 2017年 luckytianyiyan. All rights reserved.
//

import UIKit

class ControlViewController: UIViewController {
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var downButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        leftButton.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 2)
        rightButton.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        downButton.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
    }
    
    @IBAction func onUpButtonClick(_ sender: Any) {
        GameController.shared.trun(to: .up)
    }
    
    @IBAction func onRightButtonClick(_ sender: Any) {
        GameController.shared.trun(to: .right)
    }
    
    @IBAction func onDownButtonClick(_ sender: Any) {
        GameController.shared.trun(to: .down)
    }
    
    @IBAction func onLeftButtonClick(_ sender: Any) {
        GameController.shared.trun(to: .left)
    }
    
    @IBAction func onFireButtonClick(_ sender: Any) {
        GameController.shared.fire()
    }
}
