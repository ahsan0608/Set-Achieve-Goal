//
//  CreateGoalVC.swift
//  Set & Achieve Goal
//
//  Created by Ahsan on 8/18/20.
//  Copyright © 2020 Ahsan.fish. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController, UITextViewDelegate {

    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    var goalType: GoalType = .shortTerm
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextBtn.bindKeyboard()
        shortTermBtn.setSelectColor()
        longTermBtn.setDeselectColor()
        goalTextView.delegate = self
    }
    
    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermBtn.setSelectColor()
        longTermBtn.setDeselectColor()
    }
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
        goalType = .longTerm
        shortTermBtn.setDeselectColor()
        longTermBtn.setSelectColor()
    }
    @IBAction func nextBtnWasPressed(_ sender: Any) {
        if goalTextView.text != "" && goalTextView.text != "Write your goal here..."  {
            guard let finishGoalVC = storyboard?.instantiateViewController(identifier: "FinishGoalVC") as? FinishGoalVC else { return }
            
            finishGoalVC.initData(description: goalTextView.text!, type: goalType)
            presentDetails(finishGoalVC)
        }
    }
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        goalTextView.text = ""
        goalTextView.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
}
