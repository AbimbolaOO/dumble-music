//
//  HomeHeaderReuseViewCell.swift
//  dumble-music
//
//  Created by Olayemi Abimbola on 11/09/2021.
//

import UIKit

class HomeHeaderReuseViewCell: UICollectionViewCell {
    
    override init(frame:CGRect){
        super.init(frame: frame)
        backgroundColor = .systemOrange
        
        let songDiscription = UILabel()
        songDiscription.text = "Austin Millz - Ride (stripness flip)"
        songDiscription.font = UIFont.boldSystemFont(ofSize: 24)
        songDiscription.textColor = .white
        
        let recordLabel = UILabel()
        recordLabel.text = "stripness"
        recordLabel.font = UIFont.systemFont(ofSize: 16)
        recordLabel.textColor = .white
        
        let discriptionStack = UIStackView(arrangedSubviews: [songDiscription, recordLabel])
        discriptionStack.axis = .vertical
        addSubview(discriptionStack)
        
        let songCoverImage = UIImageView()
        songCoverImage.backgroundColor = .purple
        songCoverImage.widthAnchor.constraint(equalToConstant: 100).isActive = true
        songCoverImage.image = UIImage(named: "dog")
        songCoverImage.clipsToBounds = true
        songCoverImage.contentMode = .scaleAspectFill
        
        let itemNumber = UILabel()
        itemNumber.text = "1"
        itemNumber.font = UIFont.systemFont(ofSize: 16)
        itemNumber.textColor = .white
        
        let superHorizontalStack = UIStackView(arrangedSubviews: [songCoverImage, itemNumber, discriptionStack])
        addSubview(superHorizontalStack)
        superHorizontalStack.translatesAutoresizingMaskIntoConstraints = false
        superHorizontalStack.topAnchor.constraint(equalTo: topAnchor , constant: 0).isActive = true
        superHorizontalStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        superHorizontalStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        superHorizontalStack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        
        superHorizontalStack.distribution = .equalSpacing
        superHorizontalStack.alignment = .center

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
