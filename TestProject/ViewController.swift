//
//  ViewController.swift
//  TestProject
//
//  Created by ymgn on 2018/06/03.
//  Copyright © 2018年 ymgn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func judge (_ myAnswer: Int, _ AnswerNumber: Int) {
        if (myAnswer == 1 && AnswerNumber == 0) || (myAnswer == 2 && AnswerNumber == 1) || (myAnswer == 3 && AnswerNumber == 2) {
            answerLabel.text = "ひきわけ！"
        } else if (myAnswer == 1 && AnswerNumber == 1) || (myAnswer == 2 && AnswerNumber == 2) || (myAnswer == 3 && AnswerNumber == 0) {
            answerLabel.text = "あなたの勝ち！"
        } else if (myAnswer == 1 && AnswerNumber == 2) || (myAnswer == 2 && AnswerNumber == 0) || (myAnswer == 3 && AnswerNumber == 1) {
            answerLabel.text = "あなたの負け！"
        } else {
            answerLabel.text = "卑怯者！！！！"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var answerNumber = Int(arc4random_uniform(3))
    
    var newAnswerNumber = 0
    
    var myAnswer = 0
    
    @IBAction func GuButton(_ sender: Any){
        myAnswer = 1
    }
    @IBAction func ChokiButton(_ sender: Any) {
        myAnswer = 2
    }
    @IBAction func PaButton(_ sender: Any) {
        myAnswer = 3
    }
    
    @IBAction func shuffleAction(_ sender: Any) {
        
        
        repeat {
            newAnswerNumber = Int(arc4random_uniform(3))
        } while answerNumber == newAnswerNumber
        
        answerNumber = newAnswerNumber

        if answerNumber == 0 {
            answerImageView.image = UIImage(named: "gu")
        } else if answerNumber == 1 {
            answerImageView.image = UIImage(named: "choki")
        } else if answerNumber == 2 {
            answerImageView.image = UIImage(named: "pa")
        }
        
        judge(myAnswer, newAnswerNumber)
    }
    
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var answerImageView: UIImageView!
}

