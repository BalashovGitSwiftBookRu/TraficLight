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
        
        // Округлить углы вью.
        redView.layer.cornerRadius = 60
        yellowView.layer.cornerRadius = 60
        greenView.layer.cornerRadius = 60
        
        // Установить уровень прозрачности для вью.
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
        // Округлить углы кнопки.
        startButton.layer.cornerRadius = 10
    }
    

    @IBAction func startButtonTapped(_ sender: UIButton) {
        
        // Переключение сигналов светофора.
        if redView.alpha != 1 && yellowView.alpha != 1 && greenView.alpha != 1 {
            redView.alpha = 1
            
        } else if redView.alpha == 1 && yellowView.alpha != 1 && greenView.alpha != 1 {
            redView.alpha = 0.3
            yellowView.alpha = 1
            
        } else if redView.alpha != 1 && yellowView.alpha == 1 && greenView.alpha != 1 {
            yellowView.alpha = 0.3
            greenView.alpha = 1
            
        } else if redView.alpha != 1 && yellowView.alpha != 1 && greenView.alpha == 1 {
            greenView.alpha = 0.3
            redView.alpha = 1
        }
        
        // Изменение текста на кнопке.
        if startButton.titleLabel?.text == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
    }
}

