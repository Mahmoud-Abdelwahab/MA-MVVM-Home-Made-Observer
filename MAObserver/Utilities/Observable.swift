//
//  Observable.swift
//  MAObserver
//
//  Created by Mahmoud Abdul-wahab on 20/12/2021.
//

import Foundation

final class Observable<T> {
    var value: T {
        didSet{
            listener?(value)
        }
    }
    private var listener: ((T)->Void)?
    
    init(_ value: T) {
        self.value = value
    }
    
    func bind(_ listener: @escaping(T)->Void) {
        listener(value)
        self.listener = listener
    }
}
