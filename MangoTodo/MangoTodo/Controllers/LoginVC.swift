//
//  LoginVC.swift
//  MangoTodo
//
//  Created by Jhonata Jackson on 24/04/25.
//

import UIKit

class LoginVC: UIViewController {
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.backgroundColor = .darkBg
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    let topView: UIView = {
        let topView = UIView()
        topView.translatesAutoresizingMaskIntoConstraints = false
        return topView
    }()
    
    let logoImage: UIImageView = {
        let logoImage = UIImageView()
        logoImage.image = UIImage(named: "logo")
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        return logoImage
    }()
    
    let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "Mango Todo"
        titleLabel.font = UIFont(name: "Domine-Bold", size: 40)
        titleLabel.textColor = .white
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    let formView: UIView = {
        let formView = UIView()
        formView.translatesAutoresizingMaskIntoConstraints = false
        return formView
    }()
    
    let emailView: UIView = {
        let emailView = UIView()
        emailView.backgroundColor = .ligthDark
        emailView.layer.cornerRadius = 10
        emailView.translatesAutoresizingMaskIntoConstraints = false
        return emailView
    }()
    
    let emailIcon: UIImageView = {
        let emailIcon = UIImageView()
        let image = UIImage(named: "icon_email")
        emailIcon.image = emailIcon.image?.withRenderingMode(.alwaysTemplate)
        emailIcon.tintColor = .lightGray
        emailIcon.image = image
        emailIcon.translatesAutoresizingMaskIntoConstraints = false
        return emailIcon
    }()
    
    let emailTextField: UITextField = {
        let emailTextField = UITextField()
        emailTextField.textColor = .white
        emailTextField.font = UIFont(name: "Domine-Regular", size: 18)
        emailTextField.autocapitalizationType = .none
        emailTextField.keyboardType = .emailAddress
        emailTextField.spellCheckingType = .no
        emailTextField.attributedPlaceholder = NSAttributedString(
            string: "Digite o seu e-mail",
            attributes: [
                NSAttributedString.Key.foregroundColor: UIColor.gray,
            ]
        )
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        return emailTextField
    }()
    
    let passwordIcon: UIImageView = {
        let passwordIcon = UIImageView()
        let image = UIImage(named: "icon_password")
        passwordIcon.image = passwordIcon.image?.withRenderingMode(.alwaysTemplate)
        passwordIcon.tintColor = .lightGray
        passwordIcon.image = image
        passwordIcon.translatesAutoresizingMaskIntoConstraints = false
        return passwordIcon
    }()
    
    let passwordView: UIView = {
        let passwordView = UIView()
        passwordView.backgroundColor = .ligthDark
        passwordView.layer.cornerRadius = 10
        passwordView.translatesAutoresizingMaskIntoConstraints = false
        return passwordView
    }()
    
    let passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        passwordTextField.textColor = .white
        passwordTextField.font = UIFont(name: "Domine-Regular", size: 18)
        passwordTextField.autocapitalizationType = .none
        passwordTextField.keyboardType = .default
        passwordTextField.spellCheckingType = .no
        passwordTextField.isSecureTextEntry = true
        passwordTextField.attributedPlaceholder = NSAttributedString(
            string: "Digite o sua senha",
            attributes: [
                NSAttributedString.Key.foregroundColor: UIColor.gray,
            ]
        )
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        return passwordTextField
    }()
    
    let loginButton: UIButton = {
        let loginButton = UIButton(type: .system)
        loginButton.setTitle("Enter", for: .normal)
        loginButton.titleLabel?.font = UIFont(name: "Domine-Regular", size: 18)
        loginButton.tintColor = .white
        loginButton.backgroundColor = .orange
        loginButton.layer.cornerRadius = 10
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        return loginButton
    }()
    
    let registerButton: UIButton = {
        let registerButton = UIButton(type: .system)
        registerButton.setTitle("Criar conta", for: .normal)
        registerButton.titleLabel?.font = UIFont(name: "Domine-Regular", size: 18)
        registerButton.tintColor = .white
//        registerButton.backgroundColor = .orange
        registerButton.layer.cornerRadius = 10
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        return registerButton
    }()
    
    let separatorLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "Ou"
        titleLabel.font = UIFont(name: "Domine-Bold", size: 14)
        titleLabel.textColor = .white
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .darkBg
        
        self.setupView()
        self.setupConstraints()
        self.setupButtonActions()
    }
    
    func setupView() {
        topView.addSubview(logoImage)
        topView.addSubview(titleLabel)
        
        emailView.addSubview(emailIcon)
        emailView.addSubview(emailTextField)
        
        passwordView.addSubview(passwordIcon)
        passwordView.addSubview(passwordTextField)
        
        formView.addSubview(emailView)
        formView.addSubview(passwordView)
        formView.addSubview(loginButton)
        formView.addSubview(separatorLabel)
        formView.addSubview(registerButton)
        
        stackView.addArrangedSubview(topView)
        stackView.addArrangedSubview(formView)
        view.addSubview(stackView)
    }
    
    func setupButtonActions() {
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        registerButton.addTarget(self, action: #selector(registerButtonTapped), for: .touchUpInside)
    }
    
    @objc func loginButtonTapped() {
        print(">>> loginButtonTapped")
        let nextVC = HomeVC()
        nextVC.navigationItem.hidesBackButton = true
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @objc func registerButtonTapped() {
        print(">>> registerButtonTapped")
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            logoImage.centerXAnchor.constraint(equalTo: topView.centerXAnchor),
            logoImage.centerYAnchor.constraint(equalTo: topView.centerYAnchor),
            
            titleLabel.centerXAnchor.constraint(equalTo: topView.centerXAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: formView.topAnchor, constant: -10),
            
            emailView.leadingAnchor.constraint(equalTo: formView.leadingAnchor, constant: 30),
            emailView.trailingAnchor.constraint(equalTo: formView.trailingAnchor, constant: -30),
            emailView.topAnchor.constraint(equalTo: formView.topAnchor, constant: 30),
            emailView.heightAnchor.constraint(equalToConstant: 46),
            
            emailIcon.leadingAnchor.constraint(equalTo: emailView.leadingAnchor, constant: 12),
            emailIcon.centerYAnchor.constraint(equalTo: emailView.centerYAnchor),
            emailIcon.widthAnchor.constraint(equalToConstant: 25),
            emailIcon.heightAnchor.constraint(equalToConstant: 20),
            
            emailTextField.leadingAnchor.constraint(equalTo: emailIcon.trailingAnchor, constant: 10),
            emailTextField.trailingAnchor.constraint(equalTo: emailView.trailingAnchor),
            emailTextField.topAnchor.constraint(equalTo: emailView.topAnchor),
            emailTextField.bottomAnchor.constraint(equalTo: emailView.bottomAnchor),
            
            passwordView.leadingAnchor.constraint(equalTo: formView.leadingAnchor, constant: 30),
            passwordView.trailingAnchor.constraint(equalTo: formView.trailingAnchor, constant: -30),
            passwordView.topAnchor.constraint(equalTo: emailView.bottomAnchor, constant: 28),
            passwordView.heightAnchor.constraint(equalToConstant: 46),
            
            passwordIcon.leadingAnchor.constraint(equalTo: passwordView.leadingAnchor, constant: 12),
            passwordIcon.centerYAnchor.constraint(equalTo: passwordView.centerYAnchor),
            passwordIcon.widthAnchor.constraint(equalToConstant: 25),
            passwordIcon.heightAnchor.constraint(equalToConstant: 20),
            
            passwordTextField.leadingAnchor.constraint(equalTo: passwordIcon.trailingAnchor, constant: 10),
            passwordTextField.trailingAnchor.constraint(equalTo: passwordView.trailingAnchor),
            passwordTextField.topAnchor.constraint(equalTo: passwordView.topAnchor),
            passwordTextField.bottomAnchor.constraint(equalTo: passwordView.bottomAnchor),
            
            loginButton.leadingAnchor.constraint(equalTo: formView.leadingAnchor, constant: 30),
            loginButton.trailingAnchor.constraint(equalTo: formView.trailingAnchor, constant: -30),
            loginButton.topAnchor.constraint(equalTo: passwordView.bottomAnchor, constant: 90),
            loginButton.heightAnchor.constraint(equalToConstant: 46),
            
            separatorLabel.centerXAnchor.constraint(equalTo: formView.centerXAnchor),
            separatorLabel.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 26),
            
            registerButton.centerXAnchor.constraint(equalTo: formView.centerXAnchor),
            registerButton.topAnchor.constraint(equalTo: separatorLabel.bottomAnchor, constant: 10),
            registerButton.heightAnchor.constraint(equalToConstant: 46),
            
        ])
    }
}

extension LoginVC: UITextFieldDelegate {
    
}

#Preview {
    LoginVC()
}
