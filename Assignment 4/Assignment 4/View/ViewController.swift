//
//  ViewController.swift
//  Assignment 4
//
//  Created by Brett Williams on 2/8/23.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var background: UIImageView!
    
    @IBOutlet weak var prompt: UILabel!
    
    
    @IBOutlet weak var option1: UIButton!
    
    @IBOutlet weak var option2: UIButton!
    

    var journeyLogic = JourneyLogic()
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        // Do any additional setup after loading the view.
    }

    func updateUI(){
        //Swap to proper prompt.
        prompt.text = journeyLogic.getProblem()
        option1.setTitle(journeyLogic.getOptionOne(),for: .normal)
        option2.setTitle(journeyLogic.getOptionTwo(),for: .normal)
    }

    @IBAction func selection(_ sender: UIButton) {
        journeyLogic.setIndex(sender.titleLabel!.text!)
        updateUI()
    }
    

    
    
}

