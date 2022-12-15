//
//  ProfileCollectionViewCell.swift
//  ProfileCollectionView
//
//  Created by Kaue Ludovico on 13/12/22.
//

import UIKit

class ProfileCollectionViewCell: BaseCell {
    
    var profile: Profile? {
        didSet {
            lblName.text = profile?.name
            lblLanguage.text = profile?.language
            imageView.image = UIImage(named: profile?.image ?? "")
        }
    }
    
    lazy var container: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 15
        view.layer.masksToBounds = true
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor.purple.cgColor
        return view
    }()
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "tinky")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 30
        return imageView
    }()
    
    lazy var lblName: UILabel = {
        let label = UILabel()
        label.text = "Ronaldinho Gaúcho"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    lazy var lblLanguage: UILabel = {
        let label = UILabel()
        label.text = "Gauchês"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 12)
        return label 
    }()
    
    override func addSubviews() {
        addSubview(container)
        container.addSubview(imageView)
        container.addSubview(lblName)
        container.addSubview(lblLanguage)
    }
    
    override func addConstraints() {
        container.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 0, left: 10, bottom: 10, right: 10), size: .init(width: frame.width, height: 80))
        
        imageView.anchor(top: container.topAnchor, leading: container.leadingAnchor, bottom: container.bottomAnchor, trailing: nil, padding: .init(top: 10, left: 10, bottom: 10, right: 0), size: .init(width: 60, height: 60))
        
        lblName.anchor(top: imageView.topAnchor, leading: imageView.trailingAnchor, bottom: lblLanguage.topAnchor, trailing: nil, padding: .init(top: 2, left: 8, bottom: 10, right: 0), size: .init(width: 200, height: 30))
        
        lblLanguage.anchor(top: lblName.bottomAnchor, leading: lblName.leadingAnchor, bottom: imageView.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 0, bottom: 2, right: 0), size: .init(width: 250, height: 30))
    }
}
