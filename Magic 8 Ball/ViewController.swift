//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Khaya Mathebula on 2017/11/16.
//  Copyright © 2017 Aeon Source. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageBall: UIImageView!
    var randomImage = 0
    let imageArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func answerAction(_ sender: UIButton) {
        updateAnswer();
    }
    
    func updateAnswer() {
        randomImage = Int(arc4random_uniform(5))
        print("random number: \(imageArray[randomImage])")
        imageBall.image = UIImage(named: imageArray[randomImage])
    }
    
}

