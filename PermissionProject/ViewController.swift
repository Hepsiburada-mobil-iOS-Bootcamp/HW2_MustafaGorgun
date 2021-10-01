//
//  ViewController.swift
//  PermissionProject
//
//  Created by MstfGrgn on 25.09.2021.
//

import UIKit

class ViewController: UIViewController {
    private var actionButton: ActionButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addActionButton()
    }
    private func addActionButton(){
        actionButton = ActionButton(frame: .zero, data: ActionButtonData(text: "OK", buttontype: .filled(.smooth)))
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(actionButton)
        
        NSLayoutConstraint.activate([
            actionButton.heightAnchor.constraint(equalToConstant: 40),
            actionButton.widthAnchor.constraint(equalToConstant: 100),
            
            actionButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            actionButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)]
        )
    }


}

