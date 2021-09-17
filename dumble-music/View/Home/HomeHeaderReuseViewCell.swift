//
//  HomeHeaderReuseViewCell.swift
//  dumble-music
//
//  Created by Olayemi Abimbola on 11/09/2021.
//

import UIKit

class HomeHeaderReuseViewCell: UICollectionViewCell {
    
    let songDiscription: UILabel = {
        let label = UILabel()
        label.text = "Austin Millz - Ride (stripness flip)"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textColor = .white
        return label
    }()
    
    let recordLabel: UILabel = {
        let label = UILabel()
        label.text = "stripness"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        return label
    }()
    
    let songCoverImage: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .purple
        image.widthAnchor.constraint(equalToConstant: 80).isActive = true
        image.heightAnchor.constraint(equalToConstant: 80).isActive = true
        image.image = UIImage(named: "dog")
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    let itemNumber: UILabel = {
        let label = UILabel()
        label.text = "1"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        return label
    }()
    
    override init(frame:CGRect){
        super.init(frame: frame)
//        backgroundColor = .systemOrange
        
        let discriptionStack = UIStackView(arrangedSubviews: [songDiscription, recordLabel])
        discriptionStack.axis = .vertical
        addSubview(discriptionStack)
        
        let superHorizontalStack = UIStackView(arrangedSubviews: [songCoverImage, itemNumber, discriptionStack])
        addSubview(superHorizontalStack)
        superHorizontalStack.translatesAutoresizingMaskIntoConstraints = false
        superHorizontalStack.topAnchor.constraint(equalTo: topAnchor , constant: 0).isActive = true
        superHorizontalStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        superHorizontalStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        superHorizontalStack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        
//        superHorizontalStack.distribution = .equalSpacing
        superHorizontalStack.spacing = 20
        superHorizontalStack.alignment = .center
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
