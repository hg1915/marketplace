//
//  CategoryDetailCell.swift
//  HyeMarket
//
//  Created by GGTECH LLC on 2/7/22.
//

import UIKit

class CategoryDetailCell: UITableViewCell {

    static let reuseID  = "CategoryDetailCell"
    let movieImageView = HyeImageView(frame: .zero)
    let movieTitleLabel   = HyeLabel(textAlignment: .left, fontSize: 18)
    
    let priceLabel   = HyeLabel(textAlignment: .left, fontSize: 12)

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//
//    func set(favorite: Movie) {
//        let imagePath = "https://image.tmdb.org/t/p/w500/\(favorite.posterPath)"
//        movieImageView.downloadImage(from: imagePath)
//        movieTitleLabel.text = favorite.title
//    }
//
    
    private func configure() {
        addSubview(movieImageView)
        addSubview(movieTitleLabel)
        addSubview(priceLabel)
        priceLabel.textColor = .green
        accessoryType           = .disclosureIndicator
        let padding: CGFloat    = 12
        
        NSLayoutConstraint.activate([
            movieImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            movieImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            movieImageView.heightAnchor.constraint(equalToConstant: 60),
            movieImageView.widthAnchor.constraint(equalToConstant: 60),
            
            movieTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            movieTitleLabel.leadingAnchor.constraint(equalTo: movieImageView.trailingAnchor, constant: 35),
            movieTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -90),
            movieTitleLabel.heightAnchor.constraint(equalToConstant: 40),
            
            priceLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            priceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
          // priceLabel.leadingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            priceLabel.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
