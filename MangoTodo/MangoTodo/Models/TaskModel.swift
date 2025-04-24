//
//  TaskModel.swift
//  MangoTodo
//
//  Created by Jhonata Jackson on 22/04/25.
//

import Foundation

enum TaskStatus {
    case PENDING
    case FINISHED
}

struct Task {
    
    let title: String
    let description: String
    let status: TaskStatus
}
