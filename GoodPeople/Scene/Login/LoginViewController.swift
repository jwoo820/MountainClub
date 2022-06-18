//
//  LoginViewController.swift
//  GoodPeople
//
//  Created by Park Jungwoo on 2022/06/17.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("로그인", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 13.0, weight: .bold)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 12.0
        button.addTarget(self, action: #selector(didTapLoginButton), for: .touchUpInside)
        
        return button
    }()
    
    let loginLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14.0, weight: .medium)
        label.textColor = .secondaryLabel
        label.text = "로그인"
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
}

private extension LoginViewController {
    func setup() {
        view.backgroundColor = .systemBackground
        
        [loginLabel, loginButton].forEach{ view.addSubview($0) }
        
        loginLabel.snp.makeConstraints{
            $0.top.equalToSuperview().offset(100)
            $0.leading.equalToSuperview().offset(18)
            $0.trailing.equalToSuperview().inset(18)
        }
        
        loginButton.snp.makeConstraints{
            $0.top.equalTo(loginLabel.snp.bottom).offset(12)
            $0.leading.equalTo(loginLabel.snp.leading)
            $0.trailing.equalTo(loginLabel.snp.trailing)
            $0.height.equalTo(24.0)
        }
        
    }
    
    @objc func didTapLoginButton() {
        print("button clicked")

        let vc = ReservationViewController()
        vc.modalPresentationStyle = .fullScreen
//        navigationController?.show(vc, sender: nil)
        
        self.present(vc, animated: true)
    }
}

