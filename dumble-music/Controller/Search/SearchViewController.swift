//
//  SearchViewController.swift
//  dumble-music
//
//  Created by Olayemi Abimbola on 12/09/2021.
//

import UIKit

class SearchViewController: UIViewController{
    
    let tableCellId = String(describing: SearchTableViewCell.self)
//    let tableHeaderId =
    
    let searchbar = UISearchBar()
    let tableView = UITableView()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .none
        
        view.backgroundColor = .black
        
        navigationController?.isNavigationBarHidden = true
        tableView.register(UINib(nibName: tableCellId, bundle: nil), forCellReuseIdentifier: tableCellId)

        
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

extension SearchViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: tableCellId, for:indexPath) as? SearchTableViewCell else{
            fatalError("Omo nah wetin you dey write")
        }
        let accessoryImage = UIImage(named: "search")
        let accessoryView = UIImageView(image: accessoryImage)
        cell.accessoryView = accessoryView
        cell.accessoryView = accessoryView
        return cell
    }
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        let alert = UIAlertController(title: "another one", message: "What do you mean", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        let action1 = UIAlertAction(title: "yes", style: .cancel, handler: nil)
        alert.addAction(action1)
        let action2 = UIAlertAction(title: "ney", style: .destructive , handler: nil)
        alert.addAction(action2)
        present(alert, animated: true, completion: nil)
    }
}

extension SearchViewController: UITableViewDelegate{
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 400
//    }
    
    
    
}
