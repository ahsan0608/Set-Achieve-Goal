//
//  FinishGoalVC.swift
//  Set & Achieve Goal
//
//  Created by Ahsan on 8/19/20.
//  Copyright © 2020 Ahsan.fish. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController {


    @IBOutlet weak var createGoalBtn: UIButton!
    @IBOutlet weak var pointsTextField: UITextField!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createGoalBtn.bindKeyboard()

    }
    @IBAction func createGoalBtnWasPresssed(_ sender: Any) {
        if pointsTextField.text != "" {
            self.save{(complete) in
                if complete {
                 dismiss(animated: true, completion: nil)
                }
            }
        }
    }
    
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismissDetail()
    }
    
    func save(completion: (_ finished: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return}
//        let goal = Goal(context: managedContext)
//
//        goal.goalDescription = description
//        goal.goalType = goalType.rawValue
//        goal.goalCompletatonValue = Int32(pointsTextField.text!)!
//        goal.goalProgress = Int32(0)
//
//        do {
//            try managedContext.save()
//            print("")
//            completion(true)
//        } catch {
//            debugPrint("Couldn't save: \(error.localizedDescription)")
//            completion(false)
//        }
        
    }


}
