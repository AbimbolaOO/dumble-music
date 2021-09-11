//
//  HomeViewGroupCell.swift
//  dumble-music
//
//  Created by Olayemi Abimbola on 11/09/2021.
//

import UIKit

class HomeViewGroupCell: UICollectionViewCell{
    
    let musicCoverImage = UIImageView()
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = .lightGray
        musicCoverImage.backgroundColor = .purple
        musicCoverImage.contentMode = .scaleAspectFill
        musicCoverImage.clipsToBounds = true
        musicCoverImage.image = UIImage(named: "dog")
        addSubview(musicCoverImage)
        musicCoverImage.translatesAutoresizingMaskIntoConstraints = false
        musicCoverImage.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        musicCoverImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        musicCoverImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        musicCoverImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.80).isActive = true
        
        let categoryName = UILabel()
        categoryName.text = "Hot & New"
        categoryName.font = UIFont.boldSystemFont(ofSize: 16)
        categoryName.textColor = .white
        addSubview(categoryName)
        categoryName.translatesAutoresizingMaskIntoConstraints = false
        categoryName.topAnchor.constraint(equalTo: musicCoverImage.bottomAnchor , constant: 0).isActive = true
        categoryName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        categoryName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        
        let groupLabel = UILabel()
        groupLabel.text = "Playlist"
        groupLabel.font = UIFont.systemFont(ofSize: 12)
        groupLabel.textColor = .white
        addSubview(groupLabel)
        groupLabel.translatesAutoresizingMaskIntoConstraints = false
        groupLabel.topAnchor.constraint(equalTo: categoryName.bottomAnchor , constant: 0).isActive = true
        groupLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        groupLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
