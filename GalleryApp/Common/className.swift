//
//  className.swift
//  GalleryApp
//
//  Created by Admin on 26.11.2020.
//

import Foundation

extension NSObject {
    
    static var className: String {
        return String(describing: self)
    }
    var className: String {
        return String(describing: type(of: self))
    }
    
}
