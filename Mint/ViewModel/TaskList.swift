//
//  TaskList.swift
//  Mint
//
//  Created by dmitry on 23.04.2021.
//

import Foundation


class TaskVM: ObservableObject {
    @Published var taskListItems: [Task] = []
    
    func getTasks() {
        TaskRepository.shared.getTasks { tasks in
            self.taskListItems = tasks
            
        }
    }
    
    static func updateTask(task: Task){
        TaskRepository.shared.updateTasks(task: task)
        print("\n\n\n\nCCCCCCCCCCCCCCCCCCCCCCCCCCCCC\n\n\n\n\n")
    }
}

