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
    
    let viewAll: UIButton = {
        let viewAllbtn = UIButton()
        viewAllbtn.setTitle("View All", for: .normal)
        viewAllbtn.setTitleColor(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), for: .normal)
        return viewAllbtn
    }()
    
    let trendingMusicList = HomeHeaderReuseViewController()
    
    override init(frame: CGRect){
        super.init(frame: frame)
//        backgroundColor = .black
        
        let stackview = UIStackView(arrangedSubviews: [trending, viewAll])
        stackview.distribution = .equalSpacing
        stackview.alignment = .lastBaseline
        
        addSubview(stackview)
        addSubview(trendingMusicList.view)
        
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.topAnchor.constraint(equalTo: topAnchor , constant: 24).isActive = true
        stackview.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        stackview.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        
        trendingMusicList.view.translatesAutoresizingMaskIntoConstraints = false
        trendingMusicList.view.topAnchor.constraint(equalTo: stackview.bottomAnchor, constant: 12).isActive = true
        trendingMusicList.view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        trendingMusicList.view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        trendingMusicList.view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
