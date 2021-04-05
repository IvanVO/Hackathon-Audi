//
//  CandidatesData.swift
//  Reclutatores
//
//  Created by Ivan Villanueva on 11/11/20.
//  Copyright © 2020 Ivan Villanueva. All rights reserved.
//

import Foundation

class ListOfCandidates {
    //var candidateData_: CandidateData
    var area: String?
    var candidates: [String]?
    
    init(_ area: String, _ candidates: [String]) {
        self.area = area
        self.candidates = candidates
        
    }
}
