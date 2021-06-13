//
//  LoginViewController.swift
//  Network layer
//
//  Created by YADU MADHAVAN on 13/06/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet var signUpButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passWordTextField: UITextField!
    
    private let outhclient = OauthClient()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setViews()
        self.addGestureRecogniser()
    }
    
    func setViews(){
        emailTextField.setUnderLine()
        passWordTextField.setUnderLine()
        emailTextField.font = UIFont.robotoMedium(15)
    }
    
    func addGestureRecogniser(){
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard (_:)))
        self.view.addGestureRecognizer(tapGesture)
    }
    
    @objc func dismissKeyboard (_ sender: UITapGestureRecognizer) {
        emailTextField.resignFirstResponder()
        passWordTextField.resignFirstResponder()
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
     
    }
    
    func loginRequest(){
        let username = emailTextField.text ?? ""
        let password = passWordTextField.text ?? ""
        let usernameToServer = username
        let passwordToServer = password
        let params = ["username" : usernameToServer, "password" : passwordToServer]
        outhclient.loginRequest(from: params) { [weak self] result in
            switch result {
            case .success(let response):
                guard let responseValue = response else { return }
                UserDefaults.standard.encode(for: responseValue, using: .LoginModel)
            case .failure(let error):
                print("the error \(error)")
            }
        }
    }
}
