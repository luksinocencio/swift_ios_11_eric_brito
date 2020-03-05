//
//  StudyPlan.swift
//  PlanoDeEstudos
//
//  Created by Lucas Inocencio on 31/03/18.
//  Copyright © 2018 Eric Brito. All rights reserved.
//

import Foundation

class StudyPlan: Codable {
    let course: String
    let section: String
    let date: Date
    var done: Bool = false
    var id: String
    
    init(course: String, section: String, date: Date, done: Bool, id: String) {
        self.course = course
        self.section = section
        self.date = date
        self.done = done
        self.id = id
    }
}
