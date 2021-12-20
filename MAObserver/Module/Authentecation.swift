//
//  Authentecation.swift
//  MAObserver
//
//  Created by Mahmoud Abdul-wahab on 20/12/2021.
//

import UIKit

class Authentecation: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    var viewModel = AuthentecationViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubscriber()
    }

    @IBAction func didTapLoginButton(_ sender: UIButton){
        viewModel.login(with: emailTextField.text ?? "", password: passwordTextField.text ?? "")
    }
    
    private func setupSubscriber() {
        viewModel.loginStatusSubject.bind { success in
            switch success {
            case true:
                print("Welcom Mahmoud ... 😍")
            case false:
                print("Invalied Credintials ... 😱")
            }
        }
                  
    }

}

