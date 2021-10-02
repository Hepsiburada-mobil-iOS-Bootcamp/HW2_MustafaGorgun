//
//  LabelPackComponent.swift
//  PermissionProject
//
//  Created by MstfGrgn on 2.10.2021.
//

import UIKit
class LabelPackComponent: GenericBaseView<LabelPackComponentData>{
    private lazy var mainStackView: UIStackView = {
        let temp = UIStackView(arrangedSubviews: [titlelabel, subtitlelabel])
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.isUserInteractionEnabled = true
        temp.alignment = .center
        temp.distribution = .fill
        temp.axis = .vertical
        temp.spacing = 10
        return temp
    }()
    private lazy var titlelabel: UILabel = {
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.textColor = .black
        temp.text = "  "
        temp.lineBreakMode = .byCharWrapping
        temp.numberOfLines = 0
        temp.contentMode = .center
        temp.textAlignment = .center
        temp.font = FontManager.bold(24).value
        return temp
    }()
    private lazy var subtitlelabel: UILabel = {
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.textColor = .black
        temp.text = "  "
        temp.lineBreakMode = .byCharWrapping
        temp.numberOfLines = 0
        temp.contentMode = .center
        temp.textAlignment = .center
        temp.font = FontManager.bold(14).value
        return temp
    }()
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addUserComponents()
    }
    private func addUserComponents(){
        addSubview(mainStackView)
        NSLayoutConstraint.activate([
        
            mainStackView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            mainStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            mainStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            mainStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
    }
    override func loadDataView() {
        super.loadDataView()
        guard let data = returnData() else {return}
        titlelabel.text = data.title
        subtitlelabel.text = data.subTitle
    }
}
