//
//  extensions.swift
//  FunAppPre1
//
//  Created by Muhammad Rehan on 2/14/22.
//

import Foundation
import UIKit

extension UIButton {
    func buttons(btnImage images: String, colors: UIColor, sdColor: UIColor) -> UIButton {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: images), for: .normal)
        btn.tintColor = colors
        btn.layer.shadowColor = sdColor.cgColor
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }
}

extension UILabel {
    func labels(lableText text: String, align: NSTextAlignment, color: UIColor, fonts: UIFont, lines: Int = 0) -> UILabel {
        let l = UILabel()
        l.text = text
        l.textAlignment = align
        l.font = fonts
        l.textColor = color
        l.numberOfLines = lines
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }
}

extension UIImageView {
    func images(imageName: String, redius: Double, clips: Bool, contentMode: ContentMode) -> UIImageView {
        let image = UIImageView()
        image.image = UIImage(named: "\(imageName)")
        image.layer.cornerRadius = CGFloat(redius)
        image.clipsToBounds = clips
        image.contentMode = contentMode
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }
}

extension UIView {
    func views(color: UIColor, withAlpha: Double,  redius: Double, maskedCorners: CACornerMask = CACornerMask(rawValue: 0), clips: Bool) -> UIView {
        let views = UIView()
        views.backgroundColor = color.withAlphaComponent(CGFloat(withAlpha))
        views.layer.cornerRadius = CGFloat(redius)
        views.layer.maskedCorners = maskedCorners
        views.clipsToBounds = clips
        views.translatesAutoresizingMaskIntoConstraints = false
        return views
    }
}
