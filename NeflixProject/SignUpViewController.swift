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
        
        //텍스트필드들마다 속성 설정
        designField(emailField, placeholder: "이메일 주소 또는 전화번호", keyboard: .emailAddress, isSercureTextEntry: false)
        designField(pwField, placeholder: "비밀번호", keyboard: .emailAddress, isSercureTextEntry: true)
        designField(nameField, placeholder: "닉네임", keyboard: .namePhonePad, isSercureTextEntry: false)
        designField(locationField, placeholder: "위치", keyboard: .namePhonePad, isSercureTextEntry: false)
        designField(codeField, placeholder: "추천 코드 입력", keyboard: .numberPad, isSercureTextEntry: false)
        
        //회원가입 버튼 속성 설정
        designButton(signUpButton, textColor: .black, backgroundColor: .white, normalText: "회원가입", highlightText: "축하드립니다!", fontSize: 14)
        
        //스위치 버튼 속성 설정
        addSwitch.setOn(true, animated: true)
        addSwitch.onTintColor = .red
        addSwitch.thumbTintColor = .black
        
    }
    
    //텍스트필드 속성 설정 함수
    func designField(_ fieldName: UITextField, placeholder: String, keyboard: UIKeyboardType, isSercureTextEntry: Bool){
        fieldName.borderStyle = .roundedRect
        fieldName.backgroundColor = .darkGray
        fieldName.textAlignment = .center
        fieldName.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        fieldName.keyboardType = keyboard
        fieldName.isSecureTextEntry = isSercureTextEntry
    }
    
    //버튼 디자인 설정 함수
    func designButton(_ buttonName: UIButton, textColor: UIColor, backgroundColor: UIColor, normalText: String, highlightText: String, fontSize: CGFloat){
        buttonName.layer.cornerRadius = 5
        buttonName.tintColor = textColor
        buttonName.backgroundColor = backgroundColor
        buttonName.setTitle(normalText, for: .normal)
        buttonName.setTitle(highlightText, for: .highlighted)
        buttonName.titleLabel?.font = .systemFont(ofSize: fontSize)
    }
    
    //경고창 생성 함수
    func showAlertController() {
        
        //1. 경고창 생성
        let alert = UIAlertController(title: "오류", message: "이메일 또는 비밀번호를 입력하세요.", preferredStyle: .alert)
        
        //2. 경고창 안에 버튼 생성
        let ok = UIAlertAction(title: "확인", style: .cancel, handler: nil)
        
        //3. 1에서 생성한 바탕에 2에서 생성한 버튼을 추가
        alert.addAction(ok)
        
        //4. 생성한 경고창을 보여줌
        present(alert, animated: true, completion: nil)
        
    }
    
    
    //올라온 가상 키보드 바탕화면 눌러서 내려가게 만들어주는 기능
    @IBAction func tapGestureClicked(_ sender: UITapGestureRecognizer) {
        
        view.endEditing(true)
        
    }
    
    //회원가입 버튼을 누르면 가상 키보드 내려가게 만들어주는 기능
    //회원가입 버튼을 누르면 경고창 생성
    @IBAction func signUpButtonClicked(_ sender: UIButton) {
        
        view.endEditing(true)
        
        showAlertController()
        
        
        
    }
    
    //추가 정보 입력 스위치를 on하면 위치와 추천코드입력창이 뜨게 해주는 기능
    @IBAction func switchChanged(_ sender: UISwitch) {
        
        if sender.isOn {
            locationField.isHidden = false
            codeField.isHidden = false
        } else{
            locationField.isHidden = true
            codeField.isHidden = true
        }
        
    }
    
}
