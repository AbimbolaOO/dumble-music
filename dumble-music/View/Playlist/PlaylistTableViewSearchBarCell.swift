//
//  SearchTableViewSearchBarCell.swift
//  dumble-music
//
//  Created by Olayemi Abimbola on 17/09/2021.
//

import UIKit

class PlaylistTableViewSearchBarCell: UITableViewCell {
    
    let searchbar: UISearchBar = {
        let searchbar = UISearchBar()
        searchbar.placeholder = "Search"
        searchbar.barTintColor = .clear
        searchbar.tintColor = .red
        searchbar.searchTextField.textColor = .white
        searchbar.searchTextField.leftView?.tintColor = .white
        return searchbar
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        addSubview(searchbar)
        searchbar.translatesAutoresizingMaskIntoConstraints = false
        searchbar.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        searchbar.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        searchbar.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        searchbar.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        
    }

}
