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
    
    func login(with email: String, password: String, completion: @escaping (Bool?)->Void) {
        if email == "mahmoud.elziany@gmail.com" && password == "123456" {
            completion(true)
        }else{
        completion(false)
        }
    }
}
