//
//  MVVMTableViewCell.swift
//  MCVvsMVVM
//
//  Created by Alex Nagy on 14/09/2020.
//  Copyright © 2020 Alex Nagy. All rights reserved.
//

import UIKit

class MVVMTableViewCell: UITableViewCell {
    
    static let identifier = "MVVMTableViewCell"
    
    var mvvmViewModel: MVVMViewModel! {
        didSet {
            textLabel?.text = mvvmViewModel.name
            detailTextLabel?.text = mvvmViewModel.level
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

