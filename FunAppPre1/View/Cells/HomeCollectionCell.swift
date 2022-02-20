//
//  HomeCollectionCell.swift
//  FunAppPre1
//
//  Created by Muhammad Rehan on 2/7/22.
//

import UIKit

class HomeCollectionCell: UICollectionViewCell {
    
    var image: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "imagesnew")
        img.layer.cornerRadius = 30
        img.clipsToBounds = true
        img.contentMode = .scaleToFill
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    var moduleNameLabel: UILabel = {
        let l = UILabel()
        l.text = "Julia james"
        l.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        l.textColor = .black
        l.textAlignment = .left
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    var cityLabel: UILabel = {
        let l = UILabel()
        l.text = "Paris"
        l.font = UIFont.systemFont(ofSize: 12)
        l.textColor = .black
        l.textAlignment = .left
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addcellElements()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addcellElements(){
        
        addSubview(image)
        addSubview(moduleNameLabel)
        addSubview(cityLabel)
        
//        image.topAnchor.constraint(equalTo: topAnchor).isActive = true
//        image.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
//        image.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
//        image.heightAnchor.constraint(equalToConstant: 250).isActive = true
        
        image.anchor(top: topAnchor, left: leftAnchor, bottom: moduleNameLabel.topAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: -10, paddingRight: 0)
        
//        moduleNameLabel.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 10).isActive = true
//        moduleNameLabel.leadingAnchor.constraint(equalTo: image.leadingAnchor).isActive = true
//        moduleNameLabel.trailingAnchor.constraint(equalTo: image.trailingAnchor).isActive = true
        moduleNameLabel.anchor(top: image.bottomAnchor, left: leftAnchor, bottom: cityLabel.topAnchor, right: rightAnchor, paddingTop: 10, paddingLeft: 0, paddingBottom: -5, paddingRight: 0)
        
//        cityLabel.topAnchor.constraint(equalTo: moduleNameLabel.bottomAnchor, constant: 10).isActive = true
//        cityLabel.leadingAnchor.constraint(equalTo: moduleNameLabel.leadingAnchor).isActive = true
//        cityLabel.trailingAnchor.constraint(equalTo: moduleNameLabel.trailingAnchor).isActive = true

        moduleNameLabel.anchor(top: moduleNameLabel.bottomAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: -20, paddingLeft: 0, paddingBottom: -30, paddingRight: 0)
    }
    
    
}
