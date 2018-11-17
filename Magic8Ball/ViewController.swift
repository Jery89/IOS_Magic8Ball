//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Jerzy Pilarczyk on 24.09.2018.
//  Copyright © 2018 Jerzy Pilarczyk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AnswerImage: UIImageView!
    var tab:[String] = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var index:Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Ask()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func askbutton(_ sender: Any) {
        
        Ask()
    }
    
    func Random()->Int
    {
        return Int(arc4random_uniform(4))
    }
    
    func Ask()
    {
        index = Random()
        AnswerImage.image = UIImage(named: tab[index])
        
    }
}

