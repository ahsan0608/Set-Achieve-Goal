//
//  GoalsVc.swift
//  Set & Achieve Goal
//
//  Created by Ahsan on 8/17/20.
//  Copyright © 2020 Ahsan.fish. All rights reserved.
//

import UIKit
import CoreData

let appDelegate = UIApplication.shared.delegate as? AppDelegate


class GoalsVc: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isHidden = false
    }

    @IBAction func AddGoalButton(_ sender: UIButton) {
        
        guard let createGoalVC = storyboard?.instantiateViewController(withIdentifier: "CreateGoalVC") else {
            return}
        presentDetails(createGoalVC)
    }
    
}


extension GoalsVc: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else {
            return UITableViewCell()
        }
        cell.configureCell(description: "Code everyday.", type: .longTerm, progress: 10)
        return cell
    }
    
}

