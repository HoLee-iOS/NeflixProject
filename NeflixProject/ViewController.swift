//
//  ViewController.swift
//  NeflixProject
//
//  Created by 이현호 on 2022/07/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var winterButton: UIImageView!
    @IBOutlet weak var godButton: UIImageView!
    @IBOutlet weak var avatarButton: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        posterView.image = UIImage(named: "poster1")
        winterButton.layer.cornerRadius = 50
        winterButton.layer.borderColor = UIColor.cyan.cgColor
        winterButton.layer.borderWidth = 10
        godButton.layer.cornerRadius = 50
        godButton.layer.borderColor = UIColor.darkGray.cgColor
        godButton.layer.borderWidth = 10
        avatarButton.layer.cornerRadius = 50
        avatarButton.layer.borderColor = UIColor.blue.cgColor
        avatarButton.layer.borderWidth = 10
        
    }
    @IBAction func playClicked(_ sender: UIButton) {
        
        posterView.image = UIImage(named: "poster\(Int.random(in: 1...4))")
        
    }
    

}

