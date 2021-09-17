//
//  HomeViewControllerCell.swift
//  dumble-music
//
//  Created by Olayemi Abimbola on 11/09/2021.
//

import UIKit

class HomeViewControllerCell: UICollectionViewCell{
    
    let groupLabel: UILabel = {
        let label = UILabel()
        label.text = "Playlist"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textColor = .white
        return label
    }()
    
    let groupItems = HomeViewGroup()
    
    override init(frame: CGRect){
        super.init(frame: frame)
//        backgroundColor = .red
        addSubview(groupLabel)
        addSubview(groupItems.view)
        
        translatesAutoresizingMaskIntoConstraints = false
        groupLabel.translatesAutoresizingMaskIntoConstraints = false
        groupItems.view.translatesAutoresizingMaskIntoConstraints = false
        
        groupLabel.topAnchor.constraint(equalTo: topAnchor , constant: 12).isActive = true
        groupLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        groupLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        
        groupItems.view.topAnchor.constraint(equalTo: groupLabel.bottomAnchor, constant: 12).isActive = true
        groupItems.view.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        groupItems.view.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        groupItems.view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
