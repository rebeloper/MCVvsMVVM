//
//  Service.swift
//  MCVvsMVVM
//
//  Created by Alex Nagy on 14/09/2020.
//  Copyright © 2020 Alex Nagy. All rights reserved.
//

import Foundation

struct Service {
    static func fetchMVCData(_ completion: @escaping (Result<[MVCModel], Error>) -> ()) {
        completion(.success(mvcData))
    }
    
    static func fetchMVVMData(_ completion: @escaping (Result<[MVVMModel], Error>) -> ()) {
        completion(.success(mvvmData))
    }
}

let mvcData = [
    MVCModel(firstName: "Joe", lastName: "Doe", skillLevel: 18, age: 20),
    MVCModel(firstName: "Ken", lastName: "Dont", skillLevel: 38, age: 30),
    MVCModel(firstName: "Alex", lastName: "Lorem", skillLevel: 78, age: 40)
]

let mvvmData = [
    MVVMModel(firstName: "Joe", lastName: "Doe", skillLevel: 18, age: 20),
    MVVMModel(firstName: "Ken", lastName: "Dont", skillLevel: 38, age: 30),
    MVVMModel(firstName: "Alex", lastName: "Lorem", skillLevel: 78, age: 40)
]
