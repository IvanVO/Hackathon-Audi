//
//  CandidateData.swift
//  Reclutatores
//
//  Created by Ivan Villanueva on 11/11/20.
//  Copyright © 2020 Ivan Villanueva. All rights reserved.
//

import Foundation

struct CandidateData {
    var fullName: String
    var age: Int
    
    init(_ fullName: String, _ age: Int){
        self.fullName = fullName
        self.age = age
    }
}
