//
//  CustomView.swift
//  SplitViewFromViewController
//
//  Created by Vincent Grossier on 20/12/2022.
//

import UIKit

class CustomView: UIView {
    
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    var controller: ViewController?
    
    func updateLabel(with text: String?) {
        infoLabel.text = text
    }
    
    @IBAction func handleButtonTap(_ sender: UIButton) {
        var index: Int
        
        switch sender {
        case button1:
            index = 1
        case button2:
            index = 2
        case button3:
            index = 3
        default:
            index = 0
        }
        controller?.didTapButton(atIndex: index)
    }
}
