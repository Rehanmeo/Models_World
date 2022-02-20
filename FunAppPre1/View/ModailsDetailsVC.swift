//
//  ModailsDetailsVC.swift
//  FunAppPre1
//
//  Created by Muhammad Rehan on 2/9/22.
//

import UIKit

class ModailsDetailsVC: UIViewController {
    
    var backBtn: UIButton = {
        return UIButton().buttons(btnImage: "chevron.left", colors: .white, sdColor: .black)
    }()
    
    var detailView: UIView = {
        return UIView().views(color: .black, withAlpha: 0.3, redius: 30, maskedCorners: [.layerMaxXMaxYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner], clips: true)
    }()
    
    var modalNameLabels: UILabel = {

        return UILabel().labels(lableText: "Milla Javovich", align: .left, color: .white, fonts: .systemFont(ofSize: 16, weight: .medium))
    }()

    var modalsDetaillabels: UILabel = {
        return UILabel().labels(lableText: "Milla Javovish is an a italiain Model with impressive protfolio and was best model and ramp wolk in 2022. she is fomous becouse of her different colors styles.", align: .left, color: .white, fonts: .systemFont(ofSize: 12, weight: .regular))
    }()
    
    
    var followBtnView: UIView = {
        return UIView().views(color: .red, withAlpha: 0.95, redius: 20, maskedCorners: [.layerMinXMinYCorner, .layerMaxXMaxYCorner, .layerMaxXMinYCorner], clips: false)
    }()
    
    
    var followBtn: UIButton = {
        return UIButton().buttons(btnImage: "plus.circle.fill", colors: .white, sdColor: .black)
    }()
    
    var followLabels: UILabel = {
        return UILabel().labels(lableText: "Follow", align: .center, color: .white, fonts: .systemFont(ofSize: 14, weight: .bold))
    }()
    
    var bgImage: UIImageView = {
        return UIImageView().images(imageName: "selected", redius: 0.0, clips: false, contentMode: .scaleToFill)
    }()
    
    var moreBtn: UIButton = {
        return UIButton().buttons(btnImage: "ellipsis", colors: .white, sdColor: .black)
    }()
    
    var msgBtn: UIButton = {
        return UIButton().buttons(btnImage: "text.bubble", colors: .white, sdColor: .black)
    }()
    var megCountlabels: UILabel = {
        return UILabel().labels(lableText: "1", align: .left, color: .white, fonts: .systemFont(ofSize: 11, weight: .medium))
    }()
    
    var hardBtn: UIButton = {
        return UIButton().buttons(btnImage: "suit.heart", colors: .white, sdColor: .black)
    }()
    var likeCountlabels: UILabel = {
        return UILabel().labels(lableText: "165", align: .left, color: .white, fonts: .systemFont(ofSize: 11, weight: .medium))
    }()
    
    var clockBtn: UIButton = {

        return UIButton().buttons(btnImage: "clock", colors: .white, sdColor: .black)
    }()
    var clockCountlabels: UILabel = {
        return UILabel().labels(lableText: "18", align: .left, color: .white, fonts: .systemFont(ofSize: 11, weight: .medium))
    }()
    
    let stackView   = UIStackView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
    }
    
    func setupUI(){
        view.addSubview(bgImage)
        view.addSubview(backBtn)
        view.addSubview(moreBtn)
        stackviewfunc()
        view.addSubview(detailView)
        detailViewfuncs()
        

        backBtn.anchor(top: view.topAnchor, left: view.leftAnchor, paddingTop: 50, paddingLeft: 10, width: 45, height: 30)
        backBtn.addTarget(self, action: #selector(detailaction(sender:)), for: .touchUpInside)
        
        bgImage.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor)
        
        moreBtn.anchor(right: view.rightAnchor, paddingRight: -20, width: 45, height: 30)
        moreBtn.centerY(inView: backBtn)

        detailView.anchor(left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingLeft: 20, paddingBottom: -30, paddingRight: -20, height: 180)
        
    }
    
    func stackviewfunc(){
        view.addSubview(stackView)
        stackView.axis  = NSLayoutConstraint.Axis.vertical
        stackView.distribution  = UIStackView.Distribution.equalSpacing
        stackView.alignment = UIStackView.Alignment.center
        stackView.spacing   = 12.0
        
        stackView.addArrangedSubview(msgBtn)
        stackView.addArrangedSubview(megCountlabels)
        stackView.addArrangedSubview(hardBtn)
        stackView.addArrangedSubview(likeCountlabels)
        stackView.addArrangedSubview(clockBtn)
        stackView.addArrangedSubview(clockCountlabels)

        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -90).isActive = true
        stackView.anchor(left: backBtn.leftAnchor, width: 45)
    }
    func detailViewfuncs(){
        detailView.addSubview(modalNameLabels)
        detailView.addSubview(modalsDetaillabels)
        detailView.addSubview(followBtnView)
        followBtnView.addSubview(followBtn)
        followBtnView.addSubview(followLabels)
        
        modalNameLabels.anchor(top: detailView.topAnchor, left: detailView.leftAnchor, paddingTop: 20, paddingLeft: 25)
        
        modalsDetaillabels.anchor(top: modalNameLabels.bottomAnchor, left: modalNameLabels.leftAnchor, right: detailView.rightAnchor, paddingTop: 10, paddingRight: -15)

        followBtnView.anchor(bottom: detailView.bottomAnchor, right: detailView.rightAnchor, paddingBottom: -10, paddingRight: -10, width: 100, height: 40)
                
        followBtn.centerYAnchor.constraint(equalTo: followBtnView.centerYAnchor).isActive = true
        followBtn.anchor(right: followBtnView.rightAnchor, width: 30, height: 30)
        
        followLabels.centerYAnchor.constraint(equalTo: followBtnView.centerYAnchor).isActive = true
        followLabels.anchor(left: followBtnView.leftAnchor, right: followBtn.leftAnchor, paddingLeft: 8)
        
    }
}

extension ModailsDetailsVC {
    
    @objc func detailaction(sender: UIButton){
        navigationController?.popViewController(animated: true)
    }
    
}
