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
        
        //포스터 이미지 지정
        posterView.image = UIImage(named: "poster1")
        
        //아래 미리보기 이미지들을 동그랗게 만들어줌
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
    
    //재생버튼 클릭하면 포스터가 랜덤으로 변경되는 버튼
    @IBAction func playClicked(_ sender: UIButton) {
        
        posterView.image = UIImage(named: "poster\(Int.random(in: 1...4))")
        
    }
    

}

