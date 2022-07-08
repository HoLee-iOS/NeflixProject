//
//  SignUpViewController.swift
//  NeflixProject
//
//  Created by 이현호 on 2022/07/08.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var pwField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var locationField: UITextField!
    @IBOutlet weak var codeField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var addSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        designField(emailField, placeholder: "이메일 주소 또는 전화번호", keyboard: .emailAddress, isSercureTextEntry: false)
        designField(pwField, placeholder: "비밀번호", keyboard: .emailAddress, isSercureTextEntry: true)
        designField(nameField, placeholder: "닉네임", keyboard: .namePhonePad, isSercureTextEntry: false)
        designField(locationField, placeholder: "위치", keyboard: .namePhonePad, isSercureTextEntry: false)
        designField(codeField, placeholder: "추천 코드 입력", keyboard: .numberPad, isSercureTextEntry: false)
        
        designButton(signUpButton, textColor: .black, backgroundColor: .white, normalText: "회원가입", highlightText: "축하드립니다!", fontSize: 14)
        
        addSwitch.setOn(true, animated: true)
        addSwitch.onTintColor = .red
        addSwitch.thumbTintColor = .black
        
    }
    
    func designField(_ fieldName: UITextField, placeholder: String, keyboard: UIKeyboardType, isSercureTextEntry: Bool){
        fieldName.borderStyle = .roundedRect
        fieldName.backgroundColor = .darkGray
        fieldName.textAlignment = .center
        fieldName.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        fieldName.keyboardType = keyboard
        fieldName.isSecureTextEntry = isSercureTextEntry
    }
    
    func designButton(_ buttonName: UIButton, textColor: UIColor, backgroundColor: UIColor, normalText: String, highlightText: String, fontSize: CGFloat){
        buttonName.layer.cornerRadius = 5
        buttonName.tintColor = textColor
        buttonName.backgroundColor = backgroundColor
        buttonName.setTitle(normalText, for: .normal)
        buttonName.setTitle(highlightText, for: .highlighted)
        buttonName.titleLabel?.font = .systemFont(ofSize: fontSize)
    }
    
    
    @IBAction func tapGestureClicked(_ sender: UITapGestureRecognizer) {
        
        view.endEditing(true)
        
    }
    
    @IBAction func signUpButtonClicked(_ sender: UIButton) {
        
        view.endEditing(true)
        
    }
    
}
