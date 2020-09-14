//
//  MVCTableViewController.swift
//  MCVvsMVVM
//
//  Created by Alex Nagy on 14/09/2020.
//  Copyright © 2020 Alex Nagy. All rights reserved.
//

import UIKit

class MVCTableViewController: UITableViewController {
    
    var data: [MVCModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "MVC"
        tableView.register(MVCTableViewCell.self, forCellReuseIdentifier: MVCTableViewCell.identifier)
        fetchData()
    }
    
    fileprivate func fetchData() {
        Service.fetchMVCData { (result) in
            switch result {
            case .success(let data):
                self.data = data
                self.tableView.reloadData()
            case .failure(let err):
                print(err.localizedDescription)
            }
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MVCTableViewCell.identifier, for: indexPath) as! MVCTableViewCell
        cell.mvcModel = data[indexPath.row]
        return cell
    }

}

