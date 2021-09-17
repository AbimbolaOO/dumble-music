//
//  HomeViewGroupCell.swift
//  dumble-music
//
//  Created by Olayemi Abimbola on 11/09/2021.
//

import UIKit

class HomeViewGroupCell: UICollectionViewCell{
    
    let musicCoverImage:UIImageView = {
        let coverImage = UIImageView()
        coverImage.backgroundColor = .purple
        coverImage.contentMode = .scaleAspectFill
        coverImage.clipsToBounds = true
        coverImage.image = UIImage(named: "dog")
        return coverImage
    }()
    
    let categoryName: UILabel = {
        let name = UILabel()
        name.text = "Hot & New"
        name.font = UIFont.boldSystemFont(ofSize: 18)
        name.textColor = .white
        return name
    }()
    
    let groupLabel: UILabel = {
        let label = UILabel()
        label.text = "Playlist"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        return label
    }()

    override init(frame: CGRect){
        super.init(frame: frame)
//        backgroundColor = .lightGray
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(musicCoverImage)
        addSubview(categoryName)
        addSubview(groupLabel)
        
        musicCoverImage.translatesAutoresizingMaskIntoConstraints = false
        musicCoverImage.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        musicCoverImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        musicCoverImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        musicCoverImage.heightAnchor.constraint(equalToConstant: 170).isActive = true
        
        categoryName.translatesAutoresizingMaskIntoConstraints = false
        categoryName.topAnchor.constraint(equalTo: musicCoverImage.bottomAnchor , constant: 0).isActive = true
        categoryName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        categoryName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
       
        groupLabel.translatesAutoresizingMaskIntoConstraints = false
        groupLabel.topAnchor.constraint(equalTo: categoryName.bottomAnchor , constant: 0).isActive = true
        groupLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        groupLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
