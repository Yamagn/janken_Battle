//
//  ViewController.swift
//  TestProject
//
//  Created by ymgn on 2018/06/03.
//  Copyright © 2018年 ymgn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
    
    
    
    @IBAction func shuffleAction(_ sender: Any) {
        
        
        repeat {
            newAnswerNumber = Int(arc4random_uniform(3))
        } while answerNumber == newAnswerNumber
        
        answerNumber = newAnswerNumber

        if answerNumber == 0 {
            answerLabel.text = "グー"
            answerImageView.image = UIImage(named: "gu")
        } else if answerNumber == 1 {
            answerLabel.text = "チョキ"
            answerImageView.image = UIImage(named: "choki")
        } else if answerNumber == 2 {
            answerLabel.text = "パー"
            answerImageView.image = UIImage(named: "pa")
        }
        
    }
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var answerImageView: UIImageView!
}

