//
//  CategoryCell.swift
//  HyeMarket
//
//  Created by GGTECH LLC on 2/7/22.
//

import UIKit

class CategoryCell: UICollectionViewCell {
    
static let reuseID = "CategoryCell"
    let avatarImageView = HyeImageView(frame: .zero)
    let usernameLabel   = HyeLabel(textAlignment: .center, fontSize: 18)


override init(frame: CGRect) {
    super.init(frame: frame)
    configure()
}


required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
}


    func generateCell(_ category: Category) {
        usernameLabel.text = category.name
        avatarImageView.image = category.image
    }
private func configure() {
    addSubview(avatarImageView)
    addSubview(usernameLabel)
    usernameLabel.numberOfLines = 0
    let padding: CGFloat = 8
    
    NSLayoutConstraint.activate([
        avatarImageView.topAnchor.constraint(equalTo: topAnchor, constant: padding),
        avatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
        avatarImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
        avatarImageView.heightAnchor.constraint(equalTo: avatarImageView.widthAnchor),
        
        usernameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 12),
        usernameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
        usernameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
        usernameLabel.heightAnchor.constraint(equalToConstant: 30)
    ])
}
}

