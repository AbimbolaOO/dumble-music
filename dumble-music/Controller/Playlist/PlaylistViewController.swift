//
//  File.swift
//  dumble-music
//
//  Created by Olayemi Abimbola on 16/09/2021.
//

import UIKit

class PlaylistViewController: UIViewController{
    
    let tableCellId = String(describing: PlaylistTableViewCell.self)
    
    let searchbar = UISearchBar()
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = "Playlist"
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(UINib(nibName: tableCellId, bundle: nil), forCellReuseIdentifier: tableCellId)
//        tableView.register(, forHeaderFooterViewReuseIdentifier: <#T##String#>)
        
        let stackView = UIStackView(arrangedSubviews: [searchbar, tableView])
        stackView.axis = .vertical
                
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        stackView.backgroundColor = .black

    }
    
}

extension PlaylistViewController: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 2
        }
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: tableCellId, for:indexPath) as? PlaylistTableViewCell else{
                fatalError("Omo nah wetin you dey write")
            }
            return cell
        }
        guard let cell = tableView.dequeueReusableCell(withIdentifier: tableCellId, for:indexPath) as? PlaylistTableViewCell else{
            fatalError("Omo nah wetin you dey write")
        }
        return cell
    }
    
}
 


