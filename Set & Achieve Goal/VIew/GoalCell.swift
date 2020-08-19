//
//  GoalCell.swift
//  Set & Achieve Goal
//
//  Created by Ahsan on 8/17/20.
//  Copyright © 2020 Ahsan.fish. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    @IBOutlet weak var goalDescriptionLabel: UILabel!
    @IBOutlet weak var goalTypeLabel: UILabel!
    @IBOutlet weak var goalProgressLabel: UILabel!
    
    func configureCell(description: String, type: GoalType, progress: Int) {
        self.goalDescriptionLabel.text = description
        self.goalTypeLabel.text = type.rawValue
        self.goalProgressLabel.text = String(describing: progress)
    }
    
}
