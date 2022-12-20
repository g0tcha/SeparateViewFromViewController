//
//  ViewController.swift
//  SplitViewFromViewController
//
//  Created by Vincent Grossier on 20/12/2022.
//

import UIKit

class ViewController: UIViewController {
    
    var customView: CustomView?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        super.loadView()
        customView = view as? CustomView
        customView?.controller = self
    }
    
    func didTapButton(atIndex index: Int) {
        customView?.updateLabel(with: "Button \(index) tapped.")
    }
}

