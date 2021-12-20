//
//  AuthentecationViewController.swift
//  MAObserver
//
//  Created by Mahmoud Abdul-wahab on 20/12/2021.
//

import UIKit

class AuthentecationViewController: UIViewController {

    @IBOutlet weak var statusLable: UILabel!
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
                self.statusLable.text = "Welcom Alaa ... 😍"
                print("Welcom Mahmoud ... 😍")
            case false:
                print("Invalied Credintials ... 😱")
                self.statusLable.text = "Invalied Credintials ... 😱"
            }
        }
                  
    }

}

