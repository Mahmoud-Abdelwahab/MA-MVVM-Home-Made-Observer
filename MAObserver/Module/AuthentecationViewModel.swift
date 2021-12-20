//
//  AuthentecationViewModel.swift
//  MAObserver
//
//  Created by Mahmoud Abdul-wahab on 20/12/2021.
//

import Foundation

class AuthentecationViewModel {
    
    var loginStatusSubject = Observable<Bool>(false)
    
    init() {}
    
    func login(with email: String, password: String) {
        NetworkManager.shared.login(with: email, password: password){ [weak self] success in
            guard let self = self else {return}
            self.loginStatusSubject.value = success ?? false
        }
    }
}
