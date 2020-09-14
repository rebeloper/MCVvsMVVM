//
//  MVVMTableViewController.swift
//  MCVvsMVVM
//
//  Created by Alex Nagy on 14/09/2020.
//  Copyright © 2020 Alex Nagy. All rights reserved.
//

import UIKit

class MVVMTableViewController: UITableViewController {
    
    var data: [MVVMModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "MVVM"
        tableView.register(MVVMTableViewCell.self, forCellReuseIdentifier: MVVMTableViewCell.identifier)
        fetchData()
    }
    
    fileprivate func fetchData() {
        Service.fetchMVVMData { (result) in
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
        let cell = tableView.dequeueReusableCell(withIdentifier: MVVMTableViewCell.identifier, for: indexPath) as! MVVMTableViewCell
        cell.mvvmViewModel = MVVMViewModel(data[indexPath.row])
        return cell
    }

}


