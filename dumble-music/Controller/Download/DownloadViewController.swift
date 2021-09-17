//
//  DownloadViewController.swift
//  dumble-music
//
//  Created by Olayemi Abimbola on 16/09/2021.
//

import UIKit

class DownloadViewController: UIViewController{
    
    let tableCellId = String(describing: DownloadsTableViewCell.self)
    
    let tableView = UITableView()
    let rightbarButtonItem:UIBarButtonItem = {
        let button = UIBarButtonItem()
        button.title = "Import"
        button.tintColor = .white
        return button
    }()
    
    let segmentedControl:UISegmentedControl = {
        let segment = UISegmentedControl(items: ["Songs", "Albums", "Artists", "Genres"])
        segment.selectedSegmentIndex = 0
        segment.backgroundColor = #colorLiteral(red: 0.09210021049, green: 0.1027251557, blue: 0.1163528636, alpha: 1)
        segment.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16)], for: .normal)
        segment.selectedSegmentTintColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        segment.addTarget(self, action: #selector(handleSegmentChange), for: .valueChanged)
        return segment
    }()
    
    @objc func handleSegmentChange(){
        print(segmentedControl.selectedSegmentIndex)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Downloads"
        navigationItem.rightBarButtonItem = rightbarButtonItem
        
        
        tableView.dataSource = self
        tableView.separatorStyle = .none
        
        tableView.register(UINib(nibName: tableCellId, bundle: nil), forCellReuseIdentifier: tableCellId)
        
        let stackView = UIStackView(arrangedSubviews: [segmentedControl, tableView])
        stackView.axis = .vertical
        view.addSubview(stackView)
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
                
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        stackView.spacing = 6
        tableView.backgroundColor = .black
        
    }
    
}

extension DownloadViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard  let cell = tableView.dequeueReusableCell(withIdentifier: tableCellId) else {
            fatalError("God no go shame us")
        }
        return cell
    }
    
    
}
