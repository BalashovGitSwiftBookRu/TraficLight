//
//  ViewController.swift
//  TraficLight
//
//  Created by Sergey Balashov on 11/2/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    
    @IBOutlet weak var yellowView: UIView!
    
    @IBOutlet weak var greenView: UIView!
    
    
    @IBOutlet weak var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Округлить углы всех трех вью.
        redView.layer.cornerRadius = 60
        yellowView.layer.cornerRadius = 60
        greenView.layer.cornerRadius = 60
        
        // Задать исходное значение alpha для всех трех вью.
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
        startButton.layer.cornerRadius = 6
    
        
    }


}

