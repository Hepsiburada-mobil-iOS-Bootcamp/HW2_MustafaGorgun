//
//  ActionButton.swift
//  PermissionProject
//
//  Created by MstfGrgn on 30.09.2021.
//

import UIKit

protocol ActionButtonDelegate: AnyObject{
    func ActionButtonDelegate()
}

class ActionButton: GenericBaseView<ActionButtonData> {
    
    weak var delegate :ActionButtonDelegate?
    
    private lazy var shadowContainer: UIView = {
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.layer.shadowColor = UIColor.black.cgColor
        temp.layer.shadowRadius = 6
        temp.layer.shadowOpacity = 0.4
        temp.layer.shadowOffset = CGSize(width: 0, height: 2)
        return temp
    }()
    private lazy var containerview : UIView = {
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.layer.cornerRadius = 6
        temp.clipsToBounds = true
        temp.backgroundColor = .yellow
        return temp
    }()
    
    private lazy var titleInfo: UILabel = {
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.font = FontManager.bold(14).value
        temp.text = ""
        temp.contentMode = .center
        temp.textAlignment = .center
        return temp
    }()
    
    override func addMajorViewComponents() {
        super.addMajorViewComponents() // The reason why we call super here is that if there is a struct inside the addmajorcomponent function in a superclass, it will work. After running the function's own structs with Super, we can do the operations that we need to add to the func.
        addContainerView() // And then we can insert our operation
        //loadData()
    }
    override func setupViewConfigurations() {
        super.setupViewConfigurations()
        addTopGesture()
    }
    override func loadDataView() {
        super.loadDataView()
        guard let data = returnData() else { return }
        
        titleInfo.text = data.text
        
        switch data.buttontype{
        case .filled(let theme):
            containerview.backgroundColor = theme.value
            titleInfo.textColor = .white
        case .outlined(let theme):
            containerview.backgroundColor = .white
            containerview.layer.borderWidth = 1
            containerview.layer.borderColor = theme.value.cgColor
            titleInfo.textColor = theme.value
        
        }}
    private func addContainerView(){
        addSubview(shadowContainer)
        shadowContainer.addSubview(containerview)
        containerview.addSubview(titleInfo)
        
        NSLayoutConstraint.activate([
            
            shadowContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
            shadowContainer.topAnchor.constraint(equalTo: topAnchor),
            shadowContainer.trailingAnchor.constraint(equalTo: trailingAnchor),
            shadowContainer.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            
            containerview.leadingAnchor.constraint(equalTo: shadowContainer.leadingAnchor),
            containerview.topAnchor.constraint(equalTo: shadowContainer.topAnchor),
            containerview.trailingAnchor.constraint(equalTo: shadowContainer.trailingAnchor),
            containerview.bottomAnchor.constraint(equalTo: shadowContainer.bottomAnchor),
            
            titleInfo.centerXAnchor.constraint(equalTo: containerview.centerXAnchor),
            titleInfo.centerYAnchor.constraint(equalTo: containerview.centerYAnchor)
        ])
    }
    /*func loadData(){
        titleInfo.text = data.text
        switch data.buttontype{
        case .filled(let theme):
            containerview.backgroundColor = theme.value
            titleInfo.textColor = .white
        case .outlined(let theme):
            containerview.backgroundColor = .white
            containerview.layer.borderWidth = 1
            containerview.layer.borderColor = theme.value.cgColor
            titleInfo.textColor = theme.value
        }
        
    }*/
   
}
//MARK: - UIGestureRecognizerDelegate
extension ActionButton: UIGestureRecognizerDelegate{
    private func addTopGesture(){
        //let tap = UIGestureRecognizer(target: self, action: #selector()) We create another extention because This type of selector is not sugar :)
        let tap = UITapGestureRecognizer(target: self, action: .buttonTappedSelector)
        tap.delegate = self
        addGestureRecognizer(tap)
    }
    @objc fileprivate func buttonTapped(_ sender: UIGestureRecognizer){
        isUserInteractionEnabled = false
        startTappedAnimation { finish in
            if finish{
                self.isUserInteractionEnabled = true
                //print("Bana Basıldı")
                    self.delegate?.ActionButtonDelegate()
                
            }
        }
    }
}
fileprivate extension Selector{
    static let buttonTappedSelector = #selector(ActionButton.buttonTapped)
}

