//
//  ViewController.swift
//  Brighten
//
//  Created by Christopher Paterson on 23/10/2016.
//  Copyright © 2016 Christopher Paterson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var instruction: UILabel!
    
    private var _greyscaleLevel: Float = 0
    var greyscaleLevel: Float {
        get {
            return _greyscaleLevel
        }
        set {
            _greyscaleLevel = newValue
            let convertedGreyscale = CGFloat(_greyscaleLevel)
            self.view.backgroundColor = UIColor(white: convertedGreyscale, alpha: 1.0)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(white: CGFloat(_greyscaleLevel), alpha: 1.0)
        setupInstructionLabel()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    
    func setupInstructionLabel() {
        instruction.text = "Tap Screen to Brighten"
        instruction.textColor = UIColor.white
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func screenTap(_ sender: AnyObject) {
        removeInstruction()
        incrementBackgroundColour()
    }
    
    func incrementBackgroundColour() {
        greyscaleLevel += 0.05
    }
    
    func removeInstruction() {
        if !instruction.isHidden {
            instruction.isHidden = true
        }
    }
    
    
}

