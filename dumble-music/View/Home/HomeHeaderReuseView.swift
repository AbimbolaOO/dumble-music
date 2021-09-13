//
//  HomeHeaderCollectionController.swift
//  dumble-music
//
//  Created by Olayemi Abimbola on 11/09/2021.
//

import UIKit

class HomeHeaderReuseView: UICollectionReusableView{
    
    let trending: UILabel = {
        let label = UILabel()
        label.text = "Trending"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textColor = .white
        return label
    }()
    
    let trendingMusicList = HomeHeaderReuseViewController()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = .blue
        
        addSubview(trending)
        addSubview(trendingMusicList.view)
        
        trending.translatesAutoresizingMaskIntoConstraints = false
        trending.topAnchor.constraint(equalTo: topAnchor , constant: 24).isActive = true
        trending.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        trending.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        
        trendingMusicList.view.translatesAutoresizingMaskIntoConstraints = false
        trendingMusicList.view.topAnchor.constraint(equalTo: trending.bottomAnchor, constant: 12).isActive = true
        trendingMusicList.view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        trendingMusicList.view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        trendingMusicList.view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
