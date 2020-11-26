//
//  Configurable.swift
//  GalleryApp
//
//  Created by Admin on 25.11.2020.
//

protocol Configurable {
  
    associatedtype Model
    func configure(with model: Model)
}
