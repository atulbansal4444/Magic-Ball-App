//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Atul Bansal on 08/10/18.
//  Copyright © 2018 Atul Bansal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randNumber : Int = 0;
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var questionAsked: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        questionAsked.text = "Ask me anything"
        
        nw()
    }
    
    
    @IBAction func ansButtonPressed(_ sender: Any) {
        nw()
    }
    
    func nw()  {
        randNumber = Int(arc4random_uniform(5))
        
        imageView.image = UIImage(named: ballArray[randNumber])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        nw()
    }
    
}

