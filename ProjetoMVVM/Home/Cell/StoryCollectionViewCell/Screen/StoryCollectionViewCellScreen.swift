//
//  StoryCollectionViewCellScreen.swift
//  ProjetoMVVM
//
//  Created by Italo Rossy on 25/01/23.
//

import UIKit

class StoryCollectionViewCellScreen: UIView {
    
    lazy var profileImageView:  UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.cornerRadius = 35
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        return image
    }()
    
    lazy var addButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setBackgroundImage(UIImage(systemName: "plus.circle.fill")?.withRenderingMode(.alwaysTemplate), for: .normal)
        button.imageView?.tintColor = .blue
        button.backgroundColor = .white
        button.layer.cornerRadius = 12.5
        button.clipsToBounds = true
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(profileImageView)
        addSubview(addButton)
        addSubview(userName)
        configContraints()
    }
    
    lazy var userName: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        return label
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func configContraints() {
        NSLayoutConstraint.activate([
            profileImageView.widthAnchor.constraint(equalToConstant: 70),
            profileImageView.heightAnchor.constraint(equalToConstant: 70),
            profileImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            profileImageView.topAnchor.constraint(equalTo: topAnchor,constant: 15),
            
            addButton.widthAnchor.constraint(equalToConstant: 25),
            addButton.heightAnchor.constraint(equalToConstant: 25),
            addButton.bottomAnchor.constraint(equalTo: profileImageView.bottomAnchor,constant: 15),
            addButton.trailingAnchor.constraint(equalTo: profileImageView.trailingAnchor),
            
            userName.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 10),
            userName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            userName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
    }
    
}
