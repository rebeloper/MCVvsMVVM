//
//  MVVMViewModel.swift
//  MCVvsMVVM
//
//  Created by Alex Nagy on 14/09/2020.
//  Copyright © 2020 Alex Nagy. All rights reserved.
//

import Foundation

struct MVVMViewModel {
    let name: String
    let level: String
    
    init(_ mvvmModel: MVVMModel) {
        name = "\(mvvmModel.firstName) \(mvvmModel.lastName)"
        if mvvmModel.skillLevel <= 20 {
            level = "Junior"
        } else if mvvmModel.skillLevel <= 50 {
            level = "Mid Level"
        } else {
            level = "Senior"
        }
    }
}
