//
//  MVCTableViewCell.swift
//  MCVvsMVVM
//
//  Created by Alex Nagy on 14/09/2020.
//  Copyright © 2020 Alex Nagy. All rights reserved.
//

import UIKit

class MVCTableViewCell: UITableViewCell {
    
    static let identifier = "MVCTableViewCell"
    
    var mvcModel: MVCModel! {
        didSet {
            textLabel?.text = "\(mvcModel.firstName) \(mvcModel.lastName)"
            if mvcModel.skillLevel <= 20 {
                detailTextLabel?.text = "Junior"
            } else if mvcModel.skillLevel <= 50 {
                detailTextLabel?.text = "Mid Level"
            } else {
                detailTextLabel?.text = "Senior"
            } 
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
