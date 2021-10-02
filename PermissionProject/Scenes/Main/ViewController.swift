//
//  ViewController.swift
//  PermissionProject
//
//  Created by MstfGrgn on 25.09.2021.
//

import UIKit
typealias BooleanCompletingBlock = (Bool) -> Void

class ViewController: UIViewController {
    private var actionButton: ActionButton!
    private var actionModule: ActionModule!

    
    @IBAction func cameraButtonTapped(_ sender: Any) {
        print("Camera Tapped")
        let permissionViewController = PermissionViewController()
        present(permissionViewController, animated: true) {
            print("permissionViewController is presented")
        }
    }
    @IBAction func photosButtonTapped(_ sender: Any) {
        print("Photos Tapped")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //addActionButton()
        //setupActionModuleData()
        //test(completion: testHandler)
        
    }
    /*lazy var testHandler: BooleanCompletingBlock = {value in
        print("value: \(value)")
    }
    
    private func addActionButton(){
        actionModule = ActionModule()
        actionModule.translatesAutoresizingMaskIntoConstraints = false
        //actionButton.delegate = self
        view.addSubview(actionModule)
        
        NSLayoutConstraint.activate([
            actionModule.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            actionModule.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 200),
            
        ])
        
        
    }
    func setupActionModuleData(){
        let negative = ActionButtonData(text: "NOT NOW", buttontype: .outlined(.smooth)).setActionButtonListener {
            print("Negative Pressed")
        }
        let positive = ActionButtonData(text: "OK", buttontype: .filled(.smooth)).setActionButtonListener {
            print("Positive Pressed")
        }
        
        actionModule.setData(by: ActionModuleData(positifButton: positive, negativeButton: negative))
    }
    /*func test(completion: (Bool)-> Void){
        print("Test Fired")
        DispatchQueue.main.asyncAfter(deadline: .now()+3){
            completion(true)
        }
    }*/
}


extension ViewController: ActionButtonDelegate{
    func ActionButtonDelegate() {
        print("ViewController is Informed")
    }*/
    
    
}

