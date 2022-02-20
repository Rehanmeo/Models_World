//
//  HomeVC.swift
//  FunAppPre1
//
//  Created by Muhammad Rehan on 2/7/22.
//

import UIKit

class HomeVC: UIViewController {
    
    //CollectionView
    let cellId = "cellId"
    var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        layout.itemSize = CGSize(width: 180, height: 300)
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.backgroundColor = .systemGray6
        collection.isScrollEnabled = true
        
        return collection
    }()
    
    //Collection End
    var menuBtn: UIButton = {
        return UIButton().buttons(btnImage: "line.horizontal.3.decrease", colors: .black, sdColor: .black)
    }()
    
    var searrchBtn: UIButton = {
        return UIButton().buttons(btnImage: "magnifyingglass", colors: .black, sdColor: .black)
    }()
    
    var labels: UILabel = {
        return UILabel().labels(lableText: "Week in Paris", align: .left, color: .systemPurple, fonts: .systemFont(ofSize: 25, weight: .bold))
    }()
    
    var sublabels: UILabel = {
        return UILabel().labels(lableText: "2022 Fashion show in Paris", align: .left, color: .black, fonts: .systemFont(ofSize: 11, weight: .medium))
    }()
    
    var subSeclabels: UILabel = {
        return UILabel().labels(lableText: "Explore", align: .left, color: .black, fonts: .systemFont(ofSize: 18, weight: .bold))
    }()
    
    var filterBtn: UIButton = {
        return UIButton().buttons(btnImage: "slider.horizontal.3", colors: .black, sdColor: .black)
    }()

    var segmentAction: UISegmentedControl = {
        let seg = UISegmentedControl()
        
        seg.insertSegment(withTitle: "Recommended", at: 0, animated: true)
        seg.insertSegment(withTitle: "New Models", at: 1, animated: true)
        seg.insertSegment(withTitle: "2022", at: 2, animated: true)
        
        seg.selectedSegmentIndex = 0
        
        seg.selectedSegmentTintColor = .clear
        
        seg.setTitleTextAttributes([
            NSAttributedString.Key.foregroundColor: UIColor.black,
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14, weight: .regular)
        ], for: .normal)
        
        seg.setTitleTextAttributes([
            NSAttributedString.Key.foregroundColor : UIColor.systemPurple,
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13, weight: .bold)
        ], for: .selected)
        
        seg.translatesAutoresizingMaskIntoConstraints = false
        
        return seg
    }()
    
    
    var bannerImage: UIImageView = {
        return UIImageView().images(imageName: "imagesss", redius: 30, clips: true, contentMode: .scaleToFill)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        view.backgroundColor = UIColor.systemGray6
        self.searrchBtn.addTarget(self, action: #selector(homebuttonsAction(sender:)), for: .touchUpInside)
        setui()
        
    }
    
    func collectionSetup(){
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(HomeCollectionCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    func setui(){
        collectionSetup()
        
//        [menuBtn, searrchBtn, labels, sublabels, subSeclabels, filterBtn, segmentAction, collectionView, bannerImage].forEach({
//            $0.addSubview($0)
//        })
        
        view.addSubview(menuBtn)
        view.addSubview(searrchBtn)
        view.addSubview(labels)
        view.addSubview(sublabels)
        view.addSubview(subSeclabels)
        view.addSubview(filterBtn)
        view.addSubview(segmentAction)
        view.addSubview(collectionView)
        view.addSubview(bannerImage)

        menuBtn.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, paddingTop: 8, paddingLeft: 20, width: 45, height: 30)

        searrchBtn.anchor(right: view.rightAnchor, paddingRight: -20, width: 45, height: 30)
        searrchBtn.centerYAnchor.constraint(equalTo: menuBtn.centerYAnchor).isActive = true

        labels.anchor(top: menuBtn.bottomAnchor, left: menuBtn.leftAnchor, right: searrchBtn.rightAnchor, paddingTop: 35, paddingLeft: 0, paddingRight: 0)

        sublabels.anchor(top: labels.bottomAnchor, left: labels.leftAnchor, right: searrchBtn.rightAnchor, paddingTop: 4, paddingLeft: 0, paddingRight: 0)
        
        subSeclabels.anchor(top: sublabels.bottomAnchor, left: sublabels.leftAnchor, paddingTop: 30, paddingLeft: 0)
        
        filterBtn.anchor(right: searrchBtn.rightAnchor, paddingRight: 0)
        filterBtn.centerYAnchor.constraint(equalTo: subSeclabels.centerYAnchor).isActive = true
        
        segmentAction.anchor(top: filterBtn.bottomAnchor, left: subSeclabels.leftAnchor, right: filterBtn.rightAnchor, paddingTop: 20, paddingLeft: 0, paddingRight: 0,  height: 40)
        
        collectionView.anchor(top: segmentAction.bottomAnchor, left: segmentAction.leftAnchor, bottom: bannerImage.topAnchor, right: segmentAction.rightAnchor, paddingTop: 10, paddingLeft: 0, paddingBottom: -10, paddingRight: 0)
        
        bannerImage.anchor(top: collectionView.bottomAnchor, left: collectionView.leftAnchor, bottom: view.bottomAnchor, right: collectionView.rightAnchor, paddingTop: 10, paddingLeft: 0, paddingBottom: -30, paddingRight: 0)
    }
    
}

//Collection Extension
extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! HomeCollectionCell
//        cell.backgroundColor = UIColor.brown
//        cell.image.contentMode = .scaleAspectFit
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let flowayout = collectionViewLayout as? UICollectionViewFlowLayout
        let space: CGFloat = (flowayout?.minimumInteritemSpacing ?? 0.0) + (flowayout?.sectionInset.left ?? 0.0) + (flowayout?.sectionInset.right ?? 0.0)
        let size:CGFloat = (collectionView.frame.size.width - space) / 2.0
        return CGSize(width: size, height: 300)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 3, left: 11, bottom: 3, right: 11)
    }    
}

//Actions
extension HomeVC {
    @objc func homebuttonsAction(sender: UIButton) {
        navigationController?.pushViewController(ModailsDetailsVC(), animated: true)
    }
}
