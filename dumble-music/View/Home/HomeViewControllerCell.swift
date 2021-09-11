//
//  HomeViewControllerCell.swift
//  dumble-music
//
//  Created by Olayemi Abimbola on 11/09/2021.
//

import UIKit

class HomeViewControllerCell: UICollectionViewCell{
  
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = .red
        let groupItems = HomeViewGroup()
        let groupLabel = UILabel()
        groupLabel.text = "Playlist"
        groupLabel.font = UIFont.boldSystemFont(ofSize: 24)
        groupLabel.textColor = .white
        addSubview(groupLabel)
        groupLabel.translatesAutoresizingMaskIntoConstraints = false
        groupLabel.topAnchor.constraint(equalTo: topAnchor , constant: 12).isActive = true
        groupLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        groupLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        
        addSubview(groupItems.view)
        groupItems.view.translatesAutoresizingMaskIntoConstraints = false
        groupItems.view.topAnchor.constraint(equalTo: groupLabel.bottomAnchor, constant: 12).isActive = true
        groupItems.view.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        groupItems.view.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        groupItems.view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
