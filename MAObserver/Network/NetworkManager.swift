//
//  NetworkManager.swift
//  MAObserver
//
//  Created by Mahmoud Abdul-wahab on 20/12/2021.
//

import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()
    private init(){}
    
    func login(with email: String, password: String)-> Observable<Bool> {
        let observer = Observable<Bool>(false)
        if email.lowercased() == "mahmoud.elziany@gmail.com" && password == "123456" {
            observer.value = true
        }else{
            observer.value = false
        }
        return observer
    }
}
